import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/data/service/wakatime/model/range.dart' as data;
part 'range.freezed.dart';
part 'range.g.dart';

@Freezed()
class Range with _$Range {
  const Range._();
  const factory Range({
    DateTime? date,
    DateTime? end,
    DateTime? start,
    String? text,
    String? timezone,
  }) = _Range;
  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);
  static const empty = Range();

  static List<Range> listFromMapData(dynamic str) {
    return List<Range>.from(str.map((model) => Range.fromDataModel(model)));
  }

  static fromDataModel(data.Range dataModel) {
    return Range.fromJson(dataModel.toMap());
  }

  data.Range toDataModel() {
    return data.Range.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
