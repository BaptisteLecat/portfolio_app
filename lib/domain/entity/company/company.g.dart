// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Company _$$_CompanyFromJson(Map<String, dynamic> json) => _$_Company(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      employees: json['employees'] as int?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CompanyToJson(_$_Company instance) =>
    <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'employees': instance.employees,
      'location': instance.location,
    };
