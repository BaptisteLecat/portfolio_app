// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rubric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rubric _$$_RubricFromJson(Map<String, dynamic> json) => _$_Rubric(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      picture: json['picture'] as String?,
      content: json['content'] as String?,
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RubricToJson(_$_Rubric instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
      'content': instance.content,
      'project': instance.project,
    };
