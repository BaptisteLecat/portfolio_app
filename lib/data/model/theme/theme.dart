import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'theme.g.dart';

@JsonSerializable()
class Theme {
  final String? iri;
  final int? id;
  final String? label;
  const Theme({
    this.iri,
    this.id,
    this.label,
  });

  Map<String, dynamic> toJson() => _$ThemeToJson(this);

  factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);

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

  static List<Theme> listFromJson(dynamic str) =>
      List<Theme>.from(str.map((x) => Theme.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'label': label,
    };
  }

  factory Theme.fromMap(Map<String, dynamic> map) {
    return Theme(
      iri: map['iri'],
      id: map['id']?.toInt(),
      label: map['label'],
    );
  }
}
