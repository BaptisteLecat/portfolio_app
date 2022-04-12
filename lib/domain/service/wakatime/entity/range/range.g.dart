// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Range _$$_RangeFromJson(Map<String, dynamic> json) => _$_Range(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      text: json['text'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$_RangeToJson(_$_Range instance) => <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'start': instance.start?.toIso8601String(),
      'text': instance.text,
      'timezone': instance.timezone,
    };
