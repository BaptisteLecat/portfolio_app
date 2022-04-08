import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/data/model/company/company.dart';
import 'package:portfolio_app/data/model/contract/contract.dart';
import 'package:portfolio_app/data/model/location/location.dart';

part 'work.g.dart';

@JsonSerializable()
class Work {
  final String? iri;
  final int? id;
  final String? title;
  final String? picture;
  final String? time;
  final String? description;
  final Company? company;
  final Contract? contract;
  final Location? location;
  const Work({
    this.iri,
    this.id,
    this.title,
    this.picture,
    this.time,
    this.description,
    this.company,
    this.contract,
    this.location,
  });

  Map<String, dynamic> toJson() => _$WorkToJson(this);

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);

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

  static List<Work> listFromJson(dynamic str) =>
      List<Work>.from(str.map((x) => Work.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'title': title,
      'picture': picture,
      'time': time,
      'description': description,
      'company': company?.toMap(),
      'contract': contract?.toMap(),
      'location': location?.toMap(),
    };
  }

  factory Work.fromMap(Map<String, dynamic> map) {
    return Work(
      iri: map['iri'],
      id: map['id']?.toInt(),
      title: map['title'],
      picture: map['picture'],
      time: map['time'],
      description: map['description'],
      company: map['company'] != null ? Company.fromMap(map['company']) : null,
      contract:
          map['contract'] != null ? Contract.fromMap(map['contract']) : null,
      location:
          map['location'] != null ? Location.fromMap(map['location']) : null,
    );
  }
}
