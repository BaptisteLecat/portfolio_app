// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wakatime_code_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WakatimeCodeActivity _$$_WakatimeCodeActivityFromJson(
        Map<String, dynamic> json) =>
    _$_WakatimeCodeActivity(
      grandTotal: json['grandTotal'] == null
          ? null
          : GrandTotal.fromJson(json['grandTotal'] as Map<String, dynamic>),
      range: json['range'] == null
          ? null
          : Range.fromJson(json['range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WakatimeCodeActivityToJson(
        _$_WakatimeCodeActivity instance) =>
    <String, dynamic>{
      'grandTotal': instance.grandTotal,
      'range': instance.range,
    };
