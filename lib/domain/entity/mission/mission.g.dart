// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mission _$$_MissionFromJson(Map<String, dynamic> json) => _$_Mission(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      content: json['content'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      author: json['author'] == null
          ? null
          : Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MissionToJson(_$_Mission instance) =>
    <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.created_at?.toIso8601String(),
      'author': instance.author,
    };
