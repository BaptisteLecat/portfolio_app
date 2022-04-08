import 'dart:convert';
import 'package:portfolio_app/data/model/school/school.dart';
import 'package:portfolio_app/data/api/main_fetcher.dart' as fetcher;
import '../../base_repository.dart';

class SchoolRepository extends BaseRepository with fetcher.MainFetcher {
  static String ressource = 'schools';

  @override
  Future fetchAll(
      {String? params, Map<String, String>? headers, bool? toJsonLd}) async {
    var response = await get(url: '$ressource$params', toJsonLd: toJsonLd);
    return School.listFromJson(json.decode(response.content));
  }

  @override
  Future fetchOne(
      {required int id, Map<String, String>? headers, bool? toJsonLd}) async {
    var response =
        await get(url: '$ressource/${id.toString()}', toJsonLd: toJsonLd);
    return School.fromMap(json.decode(response.content));
  }

  @override
  Future<School> insert(
      {Map<String, String>? headers,
      required Object body,
      bool? toJsonLd,
      bool? authDevice}) async {
    var response = await post(
        url: '$ressource', body: jsonEncode((body as School).toJson()));
    return School.fromMap(json.decode(response.content));
  }

  @override
  Future remove(
      {required int id, Map<String, String>? headers, bool? toJsonLd}) async {
    var response = await delete(url: '$ressource/${id.toString()}');
    if (response.statusCode == 204) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future update(
      {Map<String, String>? headers,
      required Object body,
      bool? toJsonLd}) async {
    var response = await put(
        url: 'ressource/${(body as School).id}',
        body: jsonEncode(body.toJson()));
    return School.fromMap(json.decode(response.content));
  }
}
