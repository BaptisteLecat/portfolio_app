import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/data/model/location/location.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  final String? iri;
  final int? id;
  final String? name;
  final String? description;
  final int? employees;
  final Location? location;
  const Company({
    this.iri,
    this.id,
    this.name,
    this.description,
    this.employees,
    this.location,
  });

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

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

  static List<Company> listFromJson(dynamic str) =>
      List<Company>.from(str.map((x) => Company.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'name': name,
      'description': description,
      'employees': employees,
      'location': location,
    };
  }

  factory Company.fromMap(Map<String, dynamic> map) {
    return Company(
      iri: map['iri'],
      id: map['id']?.toInt(),
      name: map['name'],
      description: map['description'],
      employees: map['employees']?.toInt(),
      location:
          map['location'] != null ? Location.fromMap(map['location']) : null,
    );
  }
}
