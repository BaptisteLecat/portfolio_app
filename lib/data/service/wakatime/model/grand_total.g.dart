// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grand_total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GrandTotal _$GrandTotalFromJson(Map<String, dynamic> json) => GrandTotal(
      decimal: json['decimal'] as String?,
      digital: json['digital'] as String?,
      hours: json['hours'] as int?,
      minutes: json['minutes'] as int?,
      text: json['text'] as String?,
      totalSeconds: (json['totalSeconds'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GrandTotalToJson(GrandTotal instance) =>
    <String, dynamic>{
      'decimal': instance.decimal,
      'digital': instance.digital,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'text': instance.text,
      'totalSeconds': instance.totalSeconds,
    };
