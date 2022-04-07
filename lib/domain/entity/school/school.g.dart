// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_School _$$_SchoolFromJson(Map<String, dynamic> json) => _$_School(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SchoolToJson(_$_School instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
    };
