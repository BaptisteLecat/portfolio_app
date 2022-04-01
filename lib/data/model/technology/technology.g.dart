// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technology.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Technology _$TechnologyFromJson(Map<String, dynamic> json) => Technology(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      picture: json['picture'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TechnologyToJson(Technology instance) =>
    <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'title': instance.title,
      'picture': instance.picture,
      'description': instance.description,
    };
