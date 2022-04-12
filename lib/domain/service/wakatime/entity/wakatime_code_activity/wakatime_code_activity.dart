import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/data/service/wakatime/model/wakatime_code_activity.dart'
    as data;
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/domain/service/wakatime/entity/grand_total/grand_total.dart';
import 'package:portfolio_app/domain/service/wakatime/entity/range/range.dart';
part 'wakatime_code_activity.freezed.dart';
part 'wakatime_code_activity.g.dart';

@Freezed()
class WakatimeCodeActivity with _$WakatimeCodeActivity {
  const WakatimeCodeActivity._();
  const factory WakatimeCodeActivity({
    GrandTotal? grandTotal,
    Range? range,
  }) = _WakatimeCodeActivity;

  factory WakatimeCodeActivity.fromJson(Map<String, dynamic> json) =>
      _$WakatimeCodeActivityFromJson(json);
  static const empty = WakatimeCodeActivity();

  static List<WakatimeCodeActivity> listFromMapData(dynamic str) {
    return List<WakatimeCodeActivity>.from(
        str.map((model) => WakatimeCodeActivity.fromDataModel(model)));
  }

  static fromDataModel(data.WakatimeCodeActivity dataModel) {
    return WakatimeCodeActivity.fromJson(dataModel.toMap());
  }

  data.WakatimeCodeActivity toDataModel() {
    return data.WakatimeCodeActivity.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
