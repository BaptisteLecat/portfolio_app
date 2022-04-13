// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      content: json['content'] as String?,
      picture: json['picture'] as String?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      school: json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'name': instance.name,
      'content': instance.content,
      'picture': instance.picture,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'company': instance.company,
      'school': instance.school,
    };
