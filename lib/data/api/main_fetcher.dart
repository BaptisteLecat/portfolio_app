import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:portfolio_app/common/api/error/api/ApiException.dart';
import 'package:portfolio_app/common/api/success/api/ApiSuccess.dart';
import 'package:portfolio_app/services/secure_storage.dart';

class MainFetcher {
  static String _token = "noToken";
  String apiUrl = "https://portfolio.baptistelecat-dev.fr/api";
  SecureStorageHandler _storage = SecureStorageHandler();
  String _urlBuilder(String subUrl) {
    return "${this.apiUrl}/$subUrl";
  }

  ///Singleton pattern.
  _setUserToken() async {
    if (_token != "noToken") {
      await _storage.getToken().then((value) {
        if (value != null && value != "") {
          MainFetcher._token = value;
        }
      }).onError((error, stackTrace) {
        print(error);
        throw Exception("Aucun token fournit.");
      });
    }
  }

  List<Map<String, dynamic>>? convertJsonLdtoJson(dynamic json) {
    final List<dynamic> data;
    final List<Map<String, dynamic>> parsed;
    data = json["hydra:member"];
    parsed = json.cast<Map<String, dynamic>>();
    return json;
  }

  dynamic _convertResponsetoJson(http.Response response) {
    final List<dynamic> data;
    if (response.body.contains("hydra:member")) {
      final dynamic map = jsonDecode(response.body.toString());
      data = map["hydra:member"];
      return jsonEncode(data.cast<Map<String, dynamic>>());
    } else {
      return response.body;
    }
  }

  Future<ApiSuccess> get(
      {required String url,
      Map<String, String>? headers,
      bool? toJsonLd}) async {
    ApiSuccess responseJson;
    try {
      await _setUserToken();
      print("get ${_urlBuilder(url)}");
      final response = await http.get(Uri.parse(_urlBuilder(url)),
          headers: headers == null
              ? {
                  "Content-Type": "application/json",
                  "Accept": "application/ld+json",
                  "Authorization": "Bearer ${MainFetcher._token}"
                }
              : headers);
      responseJson = _returnResponse(response: response, toJsonLd: toJsonLd);
    } on SocketException {
      throw FetchDataException(message: 'No Internet connection');
    }
    return responseJson;
  }

  Future<ApiSuccess> post(
      {required String url,
      Map<String, String>? headers,
      Object? body,
      bool? toJsonLd,
      bool auth = true}) async {
    ApiSuccess responseJson;
    try {
      print("post ${_urlBuilder(url)}");
      print("post $body");
      final response = await http.post(Uri.parse(_urlBuilder(url)),
          headers: headers == null
              ? auth
                  ? {
                      "Accept": "application/ld+json",
                      "Content-Type": "application/x-www-form-urlencoded",
                      "X-AUTH-DEVICE": "${MainFetcher._token}"
                    }
                  : {
                      "Accept": "application/ld+json",
                      "Content-Type": "application/json",
                    }
              : headers,
          body: body);
      responseJson = _returnResponse(response: response, toJsonLd: toJsonLd);
    } on SocketException {
      throw FetchDataException(message: 'No Internet connection');
    }
    return responseJson;
  }

  Future<ApiSuccess> put(
      {required String url,
      Map<String, String>? headers,
      Object? body,
      bool? toJsonLd}) async {
    ApiSuccess responseJson;
    try {
      print("put ${_urlBuilder(url)}");
      print("put $body");
      final response = await http.put(Uri.parse(_urlBuilder(url)),
          headers: headers == null
              ? {
                  "Accept": "application/ld+json",
                  "Content-Type": "application/json",
                  "X-AUTH-DEVICE": "${MainFetcher._token}"
                }
              : headers,
          body: body,
          encoding: Utf8Codec());
      responseJson = _returnResponse(response: response, toJsonLd: toJsonLd);
    } on SocketException {
      throw FetchDataException(message: 'No Internet connection');
    }
    return responseJson;
  }

  Future<ApiSuccess> patch(
      {required String url,
      Map<String, String>? headers,
      Object? body,
      bool? toJsonLd}) async {
    ApiSuccess responseJson;
    try {
      final response = await http.patch(Uri.parse(_urlBuilder(url)),
          headers: headers == null
              ? {
                  "Accept": "application/ld+json",
                  "Content-Type": "application/merge-patch+json",
                  "X-AUTH-DEVICE": "${MainFetcher._token}"
                }
              : headers,
          body: body,
          encoding: Utf8Codec());
      responseJson = _returnResponse(response: response, toJsonLd: toJsonLd);
    } on SocketException {
      throw FetchDataException(message: 'No Internet connection');
    }
    return responseJson;
  }

  Future<ApiSuccess> delete(
      {required String url,
      Map<String, String>? headers,
      bool? toJsonLd}) async {
    ApiSuccess responseJson;
    try {
      // await _getUserDevice();
      print("delete ${_urlBuilder(url)}");
      final response = await http.delete(Uri.parse(_urlBuilder(url)),
          headers: headers == null
              ? {
                  "Accept": "application/ld+json",
                  "X-AUTH-DEVICE": "${MainFetcher._token}"
                }
              : headers);
      responseJson = _returnResponse(response: response, hasNoBody: true);
    } on SocketException {
      throw FetchDataException(message: 'No Internet connection');
    }
    return responseJson;
  }

  ApiSuccess _returnResponse(
      {required http.Response response,
      bool? toJsonLd,
      bool hasNoBody = false}) {
    //Use for Delete, because this method return anything.
    var returnedResponse;
    if (!hasNoBody) {
      returnedResponse = jsonDecode(response.body);
      jsonDecode(response.body.toString());
      if (response.statusCode >= 200 && response.statusCode < 300) {
        if (toJsonLd == null || !toJsonLd) {
          returnedResponse = ApiSuccess(
              statusCode: response.statusCode,
              content: this._convertResponsetoJson(response));
        } else {
          returnedResponse =
              ApiSuccess(statusCode: response.statusCode, content: response);
        }
      } else {
        _handlingHttpCode(response, returnedResponse);
      }
    } else {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        returnedResponse = ApiSuccess(statusCode: response.statusCode);
      } else {
        _handlingHttpCode(response, []);
      }
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
