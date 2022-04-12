import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/data/model/author/author.dart' as data;
part 'author.freezed.dart';
part 'author.g.dart';

@Freezed()
class Author with _$Author {
  const Author._();
  const factory Author({
    String? iri,
    int? id,
    String? name,
    String? picture,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  static const empty = Author();

  static List<Author> listFromMapData(dynamic str) {
    return List<Author>.from(str.map((model) => Author.fromDataModel(model)));
  }

  static fromDataModel(data.Author dataModel) {
    return Author.fromJson(dataModel.toMap());
  }

  data.Author toDataModel() {
    return data.Author.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
