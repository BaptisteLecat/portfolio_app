import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/mission/mission.dart' as data;
part 'mission.freezed.dart';
part 'mission.g.dart';

@Freezed()
class Mission with _$Mission {
  const Mission._();
  const factory Mission({
    String? iri,
    int? id,
    String? title,
    String? content,
    DateTime? created_at,
    Author? author,
  }) = _Mission;

  factory Mission.fromJson(Map<String, dynamic> json) =>
      _$MissionFromJson(json);
  static const empty = Mission();

  static List<Mission> listFromMapData(dynamic str) {
    return List<Mission>.from(str.map((model) => Mission.fromDataModel(model)));
  }

  static fromDataModel(data.Mission dataModel) {
    return Mission.fromJson(dataModel.toMap());
  }

  data.Mission toDataModel() {
    return data.Mission.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
