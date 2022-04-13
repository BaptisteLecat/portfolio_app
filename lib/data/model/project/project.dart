import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class Project {
  final String? iri;
  final int? id;
  final String? name;
  final String? description;
  final String? picture;
  const Project({
    this.iri,
    this.id,
    this.name,
    this.description,
    this.picture,
  });

  Map<String, dynamic> toJson() => _$ProjectToJson(this);

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);

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

  static List<Project> listFromJson(dynamic str) =>
      List<Project>.from(str.map((x) => Project.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'name': name,
      'description': description,
      'picture': picture,
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      iri: map['iri'],
      id: map['id']?.toInt(),
      name: map['name'],
      description: map['description'],
      picture: map['picture'],
    );
  }
}
