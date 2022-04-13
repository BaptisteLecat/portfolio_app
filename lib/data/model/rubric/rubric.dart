import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/data/model/project/project.dart';

part 'rubric.g.dart';

@JsonSerializable()
class Rubric {
  final String? iri;
  final int? id;
  final String? title;
  final String? subtitle;
  final String? picture;
  final String? content;
  final Project? project;
  const Rubric({
    this.iri,
    this.id,
    this.title,
    this.subtitle,
    this.picture,
    this.content,
    this.project,
  });

  Map<String, dynamic> toJson() => _$RubricToJson(this);

  factory Rubric.fromJson(Map<String, dynamic> json) => _$RubricFromJson(json);

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

  static List<Rubric> listFromJson(dynamic str) =>
      List<Rubric>.from(str.map((x) => Rubric.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'title': title,
      'subtitle': subtitle,
      'picture': picture,
      'content': content,
      'project': project?.toMap(),
    };
  }

  factory Rubric.fromMap(Map<String, dynamic> map) {
    return Rubric(
      iri: map['iri'],
      id: map['id']?.toInt(),
      title: map['title'],
      subtitle: map['subtitle'],
      picture: map['picture'],
      content: map['content'],
      project: map['project'] != null ? Project.fromMap(map['project']) : null,
    );
  }
}
