import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final String? iri;
  final int? id;
  final String? label;
  final double? latitude;
  final double? longitude;
  const Location({
    this.iri,
    this.id,
    this.label,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

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

  static List<Location> listFromJson(dynamic str) =>
      List<Location>.from(str.map((x) => Location.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'label': label,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      iri: map['iri'],
      id: map['id']?.toInt(),
      label: map['label'],
      latitude: map['latitude']?.toDouble(),
      longitude: map['longitude']?.toDouble(),
    );
  }
}
