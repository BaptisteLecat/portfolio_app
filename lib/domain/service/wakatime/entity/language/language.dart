import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/service/wakatime/model/language.dart'
    as data;
part 'language.freezed.dart';
part 'language.g.dart';

@Freezed()
class Language with _$Language {
  const Language._();
  const factory Language({
    String? color,
    String? name,
    double? percent,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
  static const empty = Language();

  static List<Language> listFromMapData(dynamic str) {
    return List<Language>.from(
        str.map((model) => Language.fromDataModel(model)));
  }

  static fromDataModel(data.Language dataModel) {
    return Language.fromJson(dataModel.toMap());
  }

  data.Language toDataModel() {
    return data.Language.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
