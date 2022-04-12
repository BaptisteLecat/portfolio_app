// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Range _$RangeFromJson(Map<String, dynamic> json) => Range(
      date: json['date'] as String?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      text: json['text'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$RangeToJson(Range instance) => <String, dynamic>{
      'date': instance.date,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'text': instance.text,
      'timezone': instance.timezone,
    };
