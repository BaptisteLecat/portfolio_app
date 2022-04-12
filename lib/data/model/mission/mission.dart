import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/data/model/author/author.dart';

part 'mission.g.dart';

@JsonSerializable()
class Mission {
  final String? iri;
  final int? id;
  final String? title;
  final String? content;
  final DateTime? created_at;
  final Author? author;
  const Mission({
    this.iri,
    this.id,
    this.title,
    this.content,
    this.created_at,
    this.author,
  });

  Map<String, dynamic> toJson() => _$MissionToJson(this);

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);

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

  static List<Mission> listFromJson(dynamic str) =>
      List<Mission>.from(str.map((x) => Mission.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'title': title,
      'content': content,
      'created_at': created_at,
      'author': author?.toMap(),
    };
  }

  factory Mission.fromMap(Map<String, dynamic> map) {
    return Mission(
      iri: map['iri'],
      id: map['id']?.toInt(),
      title: map['title'],
      content: map['content'],
      created_at: map['created_at'],
      author: map['author'] != null ? Author.fromMap(map['author']) : null,
    );
  }
}
