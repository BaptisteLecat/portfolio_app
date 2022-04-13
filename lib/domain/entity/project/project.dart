import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/project/project.dart' as data;
part 'project.freezed.dart';
part 'project.g.dart';

@Freezed()
class Project with _$Project {
  const Project._();
  const factory Project({
    String? iri,
    int? id,
    String? name,
    String? description,
    String? picture,
    DateTime? start,
    DateTime? end,
    Company? company,
    School? school,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
  static const empty = Project();

  static List<Project> listFromMapData(dynamic str) {
    return List<Project>.from(str.map((model) => Project.fromDataModel(model)));
  }

  static fromDataModel(data.Project dataModel) {
    return Project.fromJson(dataModel.toMap());
  }

  data.Project toDataModel() {
    return data.Project.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
