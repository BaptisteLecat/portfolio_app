import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'technology.g.dart';

@JsonSerializable()
class Technology {
  final String? iri;
  final int? id;
  final String? title;
  final String? picture;
  final String? description;
  const Technology({
    this.iri,
    this.id,
    this.title,
    this.picture,
    this.description,
  });

  Map<String, dynamic> toJson() => _$TechnologyToJson(this);

  factory Technology.fromJson(Map<String, dynamic> json) =>
      _$TechnologyFromJson(json);

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

  static List<Technology> listFromJson(dynamic str) =>
      List<Technology>.from(str.map((x) => Technology.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'title': title,
      'picture': picture,
      'description': description,
    };
  }

  factory Technology.fromMap(Map<String, dynamic> map) {
    return Technology(
      iri: map['iri'],
      id: map['id']?.toInt(),
      title: map['title'],
      picture: map['picture'],
      description: map['description'],
    );
  }
}
