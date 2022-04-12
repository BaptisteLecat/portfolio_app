import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/data/model/theme/theme.dart' as data;
part 'theme.freezed.dart';
part 'theme.g.dart';

@Freezed()
class Theme with _$Theme {
  const Theme._();
  const factory Theme({
    String? iri,
    int? id,
    String? label,
  }) = _Theme;

  factory Theme.fromJson(Map<String, dynamic> json) => _$ThemeFromJson(json);
  static const empty = Theme();

  static List<Theme> listFromMapData(dynamic str) {
    return List<Theme>.from(str.map((model) => Theme.fromDataModel(model)));
  }

  static fromDataModel(data.Theme dataModel) {
    return Theme.fromJson(dataModel.toMap());
  }

  data.Theme toDataModel() {
    return data.Theme.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
