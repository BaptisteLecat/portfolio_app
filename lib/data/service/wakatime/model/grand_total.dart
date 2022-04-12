import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'grand_total.g.dart';

@JsonSerializable()
class GrandTotal {
  final String? decimal;
  final String? digital;
  final int? hours;
  final int? minutes;
  final String? text;
  final double? totalSeconds;
  const GrandTotal({
    this.decimal,
    this.digital,
    this.hours,
    this.minutes,
    this.text,
    this.totalSeconds,
  });

  Map<String, dynamic> toJson() => _$GrandTotalToJson(this);

  factory GrandTotal.fromJson(Map<String, dynamic> json) =>
      _$GrandTotalFromJson(json);

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

  static List<GrandTotal> listFromJson(dynamic str) =>
      List<GrandTotal>.from(str.map((x) => GrandTotal.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'decimal': decimal,
      'digital': digital,
      'hours': hours,
      'minutes': minutes,
      'text': text,
      'totalSeconds': totalSeconds,
    };
  }

  factory GrandTotal.fromMap(Map<String, dynamic> map) {
    return GrandTotal(
      decimal: map['decimal'],
      digital: map['digital'],
      hours: map['hours'],
      minutes: map['minutes'],
      text: map['text'],
      totalSeconds: map['totalSeconds'],
    );
  }
}
