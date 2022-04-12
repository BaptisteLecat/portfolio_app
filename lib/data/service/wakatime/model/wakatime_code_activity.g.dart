// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wakatime_code_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WakatimeCodeActivity _$WakatimeCodeActivityFromJson(
        Map<String, dynamic> json) =>
    WakatimeCodeActivity(
      grandTotal: json['grand_total'] == null
          ? null
          : GrandTotal.fromJson(json['grand_total'] as Map<String, dynamic>),
      range: json['range'] == null
          ? null
          : Range.fromJson(json['range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WakatimeCodeActivityToJson(
        WakatimeCodeActivity instance) =>
    <String, dynamic>{
      'grand_total': instance.grandTotal,
      'range': instance.range,
    };
