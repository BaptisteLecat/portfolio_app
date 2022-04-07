import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/data/model/location/location.dart';

part 'school.g.dart';

@JsonSerializable()
class School {
  final String? iri;
  final int? id;
  final String? name;
  final String? description;
  final Location? location;
  const School({this.iri, this.id, this.name, this.description, this.location});

  Map<String, dynamic> toJson() => _$SchoolToJson(this);

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);

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

  static List<School> listFromJson(dynamic str) =>
      List<School>.from(str.map((x) => School.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'name': name,
      'description': description,
      'location': location,
    };
  }

  factory School.fromMap(Map<String, dynamic> map) {
    return School(
      iri: map['iri'],
      id: map['id']?.toInt(),
      name: map['name'],
      description: map['description'],
      location:
          map['location'] != null ? Location.fromMap(map['location']) : null,
    );
  }
}
