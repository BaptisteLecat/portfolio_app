import 'dart:convert';
import 'package:portfolio_app/data/model/work/work.dart';
import 'package:portfolio_app/data/api/main_fetcher.dart' as fetcher;
import '../../base_repository.dart';

class WorkRepository extends BaseRepository with fetcher.MainFetcher {
  static String ressource = 'works';

  @override
  Future fetchAll(
      {String? params, Map<String, String>? headers, bool? toJsonLd}) async {
    var response = await get(url: '$ressource$params', toJsonLd: toJsonLd);
    return Work.listFromJson(json.decode(response.content));
  }

  @override
  Future fetchOne(
      {required int id, Map<String, String>? headers, bool? toJsonLd}) async {
    var response =
        await get(url: 'ressource/${id.toString()}', toJsonLd: toJsonLd);
    return Work.fromMap(json.decode(response.content));
  }

  @override
  Future<Work> insert(
      {Map<String, String>? headers,
      required Object body,
      bool? toJsonLd,
      bool? authDevice}) async {
    var response = await post(
        url: '$ressource', body: jsonEncode((body as Work).toJson()));
    return Work.fromMap(json.decode(response.content));
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
        url: '$ressource/${(body as Work).id}',
        body: jsonEncode(body.toJson()));
    return Work.fromMap(json.decode(response.content));
  }
}
