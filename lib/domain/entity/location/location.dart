import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/location/location.dart' as data;
part 'location.freezed.dart';
part 'location.g.dart';

@Freezed()
class Location with _$Location {
  const Location._();
  const factory Location({
    String? iri,
    int? id,
    String? label,
    double? latitude,
    double? longitude,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  static const empty = Location();

  static List<Location> listFromMapData(dynamic str) {
    return List<Location>.from(
        str.map((model) => Location.fromDataModel(model)));
  }

  static fromDataModel(data.Location dataModel) {
    return Location.fromJson(dataModel.toMap());
  }

  data.Location toDataModel() {
    return data.Location.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
