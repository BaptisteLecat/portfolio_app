// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      color: json['color'] as String?,
      name: json['name'] as String?,
      percent: (json['percent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'color': instance.color,
      'name': instance.name,
      'percent': instance.percent,
    };
