// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      picture: json['picture'] as String?,
      time: json['time'] as String?,
      description: json['description'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'title': instance.title,
      'picture': instance.picture,
      'time': instance.time,
      'description': instance.description,
      'company': instance.company,
      'location': instance.location,
    };
