// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Work _$$_WorkFromJson(Map<String, dynamic> json) => _$_Work(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      picture: json['picture'] as String?,
      description: json['description'] as String?,
      company: json['company'] == null
          ? null
          : Company.fromJson(json['company'] as Map<String, dynamic>),
      contract: json['contract'] == null
          ? null
          : Contract.fromJson(json['contract'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WorkToJson(_$_Work instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'title': instance.title,
      'picture': instance.picture,
      'description': instance.description,
      'company': instance.company,
      'contract': instance.contract,
      'location': instance.location,
    };
