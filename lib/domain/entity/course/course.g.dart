// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      picture: json['picture'] as String?,
      time: json['time'] as String?,
      description: json['description'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      school: json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'title': instance.title,
      'picture': instance.picture,
      'time': instance.time,
      'description': instance.description,
      'location': instance.location,
      'school': instance.school,
    };
