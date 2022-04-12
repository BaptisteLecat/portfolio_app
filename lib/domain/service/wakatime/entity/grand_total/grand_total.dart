import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/service/wakatime/model/grand_total.dart'
    as data;
part 'grand_total.freezed.dart';
part 'grand_total.g.dart';

@Freezed()
class GrandTotal with _$GrandTotal {
  const GrandTotal._();
  const factory GrandTotal({
    String? decimal,
    String? digital,
    int? hours,
    int? minutes,
    String? text,
    double? totalSeconds,
  }) = _GrandTotal;

  factory GrandTotal.fromJson(Map<String, dynamic> json) =>
      _$GrandTotalFromJson(json);
  static const empty = GrandTotal();

  static List<GrandTotal> listFromMapData(dynamic str) {
    return List<GrandTotal>.from(
        str.map((model) => GrandTotal.fromDataModel(model)));
  }

  static fromDataModel(data.GrandTotal dataModel) {
    return GrandTotal.fromJson(dataModel.toMap());
  }

  data.GrandTotal toDataModel() {
    return data.GrandTotal.fromJson(this.toJson());
  }

  int roundedHours() {
    return (minutes != null && hours != null && minutes! > 30)
        ? hours! + 1
        : (minutes != null && hours != null)
            ? hours!
            : 0;
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
