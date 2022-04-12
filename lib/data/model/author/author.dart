import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'author.g.dart';

@JsonSerializable()
class Author {
  final String? iri;
  final int? id;
  final String? name;
  final String? picture;
  const Author({
    this.iri,
    this.id,
    this.name,
    this.picture,
  });

  Map<String, dynamic> toJson() => _$AuthorToJson(this);

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  static _toJsonIri(dynamic data) {
    String text = data.runtimeType.toString();
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
    String result = text
        .replaceAllMapped(exp, (Match m) => ('_' + m.group(0)!))
        .toLowerCase();
    if (data != null) {
      return 'api/${result + 's'}/${data.id}';
    }
    return null;
  }

  static List<Author> listFromJson(dynamic str) =>
      List<Author>.from(str.map((x) => Author.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'name': name,
      'picture': picture,
    };
  }

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      iri: map['iri'],
      id: map['id']?.toInt(),
      name: map['name'],
      picture: map['picture'],
    );
  }
}
