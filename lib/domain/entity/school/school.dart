import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/school/school.dart' as data;
part 'school.freezed.dart';
part 'school.g.dart';

@Freezed()
class School with _$School {
  const School._();
  const factory School({
    String? iri,
    int? id,
    String? name,
    String? description,
    Location? location,
  }) = _School;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
  static const empty = School();

  static List<School> listFromMapData(dynamic str) {
    return List<School>.from(str.map((model) => School.fromDataModel(model)));
  }

  static fromDataModel(data.School dataModel) {
    return School.fromJson(dataModel.toMap());
  }

  data.School toDataModel() {
    return data.School.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
