abstract class BaseRepository {
  //Get ressource by ID.
  Future<dynamic> fetchOne(
      {required int id, Map<String, String>? headers, bool? toJsonLd});

  //Get list of all objects of this ressource.
  Future<dynamic> fetchAll(
      {String? params, Map<String, String>? headers, bool? toJsonLd});

  //Post a new ressource.
  Future<dynamic> insert(
      {Map<String, String>? headers,
      required Object body,
      bool? toJsonLd,
      bool? authDevice});

  ///PUT new values for a specified ressource.
  Future<dynamic> update(
      {Map<String, String>? headers, required Object body, bool? toJsonLd});

  //DELETE a ressource.
  Future<dynamic> remove(
      {required int id, Map<String, String>? headers, bool? toJsonLd});
}
