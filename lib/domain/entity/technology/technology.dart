import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
// import 'package:windle/data/model/client.dart' as data;
import 'package:portfolio_app/data/model/technology/technology.dart' as data;
part 'technology.freezed.dart';
part 'technology.g.dart';

@Freezed()
class Technology with _$Technology {
  const Technology._();
  const factory Technology({
    String? iri,
    int? id,
    String? title,
    String? picture,
    String? description,
  }) = _Technology;

  factory Technology.fromJson(Map<String, dynamic> json) =>
      _$TechnologyFromJson(json);
  static const empty = Technology();

  static List<Technology> listFromMapData(dynamic str) {
    return List<Technology>.from(
        str.map((model) => Technology.fromDataModel(model)));
  }

  static fromDataModel(data.Technology dataModel) {
    return Technology.fromJson(dataModel.toMap());
  }

  data.Technology toDataModel() {
    return data.Technology.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
