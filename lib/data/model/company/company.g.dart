// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      employees: json['employees'] as int?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'employees': instance.employees,
      'location': instance.location,
    };
