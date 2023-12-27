import 'package:portfolio_app/common/api/error/api/ApiException.dart';
import 'package:portfolio_app/common/api/success/api/ApiSuccess.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

mixin WakatimeMainFetcher {
  final String apiUrl = "https://wakatime.com";
  String _urlBuilder(String subUrl) {
    return "${this.apiUrl}/$subUrl";
  }

  Future<ApiSuccess> get({
    required String url,
    Map<String, String>? headers,
  }) async {
    ApiSuccess responseJson;
    try {
      print("get ${_urlBuilder(url)}");
      final response = await http.get(Uri.parse(_urlBuilder(url)), headers: {
        "Content-Type": "application/json",
        "Accept": "application/ld+json",
      });
      responseJson = _returnResponse(response: response);
    } on SocketException {
      throw FetchDataException(message: 'No Internet connection');
    }
    return responseJson;
  }

  ApiSuccess _returnResponse({
    required http.Response response,
  }) {
    var returnedResponse;
    if (response.statusCode >= 200 && response.statusCode < 300) {
      returnedResponse =
          ApiSuccess(statusCode: response.statusCode, content: response.body);
    } else {
      _handlingHttpCode(response, []);
    }
    return returnedResponse;
  }

  void _handlingHttpCode(http.Response response, dynamic returnedResponse) {
    print("Response body : ${response.body}");
    switch (response.statusCode) {
      case 400:
        throw BadRequestException(
            message: (returnedResponse["title"] != null)
                ? returnedResponse["title"]
                : (returnedResponse["message"] != null)
                    ? returnedResponse["message"]
                    : returnedResponse["error"]);
      case 401:
        throw UnauthorisedException(
            message: (returnedResponse["title"] != null)
                ? returnedResponse["title"]
                : (returnedResponse["message"] != null)
                    ? returnedResponse["message"]
                    : returnedResponse["error"]);
      case 402:
        throw PaymentRequiredException(
            message: (returnedResponse["title"] != null)
                ? returnedResponse["title"]
                : (returnedResponse["message"] != null)
                    ? returnedResponse["message"]
                    : returnedResponse["error"]);
      case 403:
        throw ForbiddenException(
            message: (returnedResponse["title"] != null)
                ? returnedResponse["title"]
                : (returnedResponse["message"] != null)
                    ? returnedResponse["message"]
                    : returnedResponse["error"]);
      case 404:
        throw NotFoundException(
            message: (returnedResponse["title"] != null)
                ? returnedResponse["title"]
                : (returnedResponse["message"] != null)
                    ? returnedResponse["message"]
                    : returnedResponse["error"]);
      case 409:
        throw ConflictException(
            message: (returnedResponse["title"] != null)
                ? returnedResponse["title"]
                : (returnedResponse["message"] != null)
                    ? returnedResponse["message"]
                    : returnedResponse["error"]);
      case 500:
        throw ServerException(
            message: (returnedResponse["title"] != null)
                ? returnedResponse["title"]
                : (returnedResponse["message"] != null)
                    ? returnedResponse["message"]
                    : returnedResponse["error"]);
      default:
        throw FetchDataException(
            statusCode: response.statusCode,
            message:
                "${(returnedResponse["title"] != null) ? returnedResponse["title"] : returnedResponse["message"]} : ${response.statusCode}");
    }
  }
}
