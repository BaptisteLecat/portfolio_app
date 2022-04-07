// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

School _$SchoolFromJson(Map<String, dynamic> json) => School(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
    };
