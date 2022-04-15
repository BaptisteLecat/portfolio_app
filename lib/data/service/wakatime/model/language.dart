import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'language.g.dart';

@JsonSerializable()
class Language {
  final String? color;
  final String? name;
  final double? percent;
  const Language({
    this.color,
    this.name,
    this.percent,
  });

  Map<String, dynamic> toJson() => _$LanguageToJson(this);

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);

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

  static List<Language> listFromJson(dynamic str) =>
      List<Language>.from(str.map((x) => Language.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'color': color,
      'name': name,
      'percent': percent,
    };
  }

  factory Language.fromMap(Map<String, dynamic> map) {
    return Language(
      color: map['color'],
      name: map['name'],
      percent: map['percent']?.toDouble(),
    );
  }
}
