import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/data/model/company/company.dart';
import 'package:portfolio_app/data/model/contract/contract.dart';
import 'package:portfolio_app/data/model/location/location.dart';
import 'package:portfolio_app/data/model/school/school.dart';

part 'course.g.dart';

@JsonSerializable()
class Course {
  final String? iri;
  final int? id;
  final String? title;
  final String? picture;
  final String? time;
  final String? description;
  final Company? company;
  final Location? location;
  final School? school;
  const Course(
      {this.iri,
      this.id,
      this.title,
      this.picture,
      this.time,
      this.description,
      this.company,
      this.location,
      this.school});

  Map<String, dynamic> toJson() => _$CourseToJson(this);

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

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

  static List<Course> listFromJson(dynamic str) =>
      List<Course>.from(str.map((x) => Course.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'title': title,
      'picture': picture,
      'time': time,
      'description': description,
      'company': company?.toMap(),
      'location': location?.toMap(),
      'school': school?.toMap(),
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      iri: map['iri'],
      id: map['id']?.toInt(),
      title: map['title'],
      picture: map['picture'],
      time: map['time'],
      description: map['description'],
      company: map['company'] != null ? Company.fromMap(map['company']) : null,
      location:
          map['location'] != null ? Location.fromMap(map['location']) : null,
      school: map['school'] != null ? School.fromMap(map['school']) : null,
    );
  }
}
