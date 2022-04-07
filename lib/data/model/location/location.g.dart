// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      label: json['label'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'label': instance.label,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
