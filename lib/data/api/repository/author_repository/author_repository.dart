import 'dart:convert';
import 'package:portfolio_app/data/model/author/author.dart';
import 'package:portfolio_app/data/api/main_fetcher.dart' as fetcher;
import '../../base_repository.dart';

class AuthorRepository extends BaseRepository with fetcher.MainFetcher {
  static String ressource = 'authors';

  @override
  Future fetchAll(
      {String? params, Map<String, String>? headers, bool? toJsonLd}) async {
    var response = await get(url: '$ressource$params', toJsonLd: toJsonLd);
    return Author.listFromJson(json.decode(response.content));
  }

  @override
  Future fetchOne(
      {required int id, Map<String, String>? headers, bool? toJsonLd}) async {
    var response =
        await get(url: '$ressource/${id.toString()}', toJsonLd: toJsonLd);
    return Author.fromMap(json.decode(response.content));
  }

  @override
  Future<Author> insert(
      {Map<String, String>? headers,
      required Object body,
      bool? toJsonLd,
      bool? authDevice}) async {
    var response = await post(
        url: '$ressource', body: jsonEncode((body as Author).toJson()));
    return Author.fromMap(json.decode(response.content));
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
        url: '$ressource/${(body as Author).id}',
        body: jsonEncode(body.toJson()));
    return Author.fromMap(json.decode(response.content));
  }
}
