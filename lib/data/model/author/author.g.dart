// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      iri: json['iri'] as String?,
      id: json['id'] as int?,
      name: json['name'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'iri': instance.iri,
      'id': instance.id,
      'name': instance.name,
      'picture': instance.picture,
    };
