import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'range.g.dart';

@JsonSerializable()
class Range {
  final String? date;
  final DateTime? start;
  final DateTime? end;
  final String? text;
  final String? timezone;
  const Range({
    this.date,
    this.start,
    this.end,
    this.text,
    this.timezone,
  });

  Map<String, dynamic> toJson() => _$RangeToJson(this);

  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);

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

  static List<Range> listFromJson(dynamic str) =>
      List<Range>.from(str.map((x) => Range.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'start': start?.toIso8601String(),
      'end': end?.toIso8601String(),
      'text': text,
      'timezone': timezone,
    };
  }

  factory Range.fromMap(Map<String, dynamic> map) {
    return Range(
      date: map['date'],
      start: map['start']?.toIso8601String(),
      end: map['end']?.toIso8601String(),
      text: map['text'],
      timezone: map['timezone'],
    );
  }
}
