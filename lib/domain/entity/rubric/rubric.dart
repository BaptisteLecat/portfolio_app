import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/rubric/rubric.dart' as data;
import 'package:portfolio_app/domain/entity/project/project.dart';
part 'rubric.freezed.dart';
part 'rubric.g.dart';

@Freezed()
class Rubric with _$Rubric {
  const Rubric._();
  const factory Rubric({
    String? iri,
    int? id,
    String? title,
    String? subtitle,
    String? picture,
    String? content,
    Project? project,
  }) = _Rubric;

  factory Rubric.fromJson(Map<String, dynamic> json) => _$RubricFromJson(json);
  static const empty = Rubric();

  static List<Rubric> listFromMapData(dynamic str) {
    return List<Rubric>.from(str.map((model) => Rubric.fromDataModel(model)));
  }

  static fromDataModel(data.Rubric dataModel) {
    return Rubric.fromJson(dataModel.toMap());
  }

  data.Rubric toDataModel() {
    return data.Rubric.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
