import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/work/work.dart' as data;
part 'work.freezed.dart';
part 'work.g.dart';

@Freezed()
class Work with _$Work {
  const Work._();
  const factory Work({
    String? iri,
    int? id,
    String? title,
    String? picture,
    String? description,
    Company? company,
    Contract? contract,
    Location? location,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
  static const empty = Work();

  static List<Work> listFromMapData(dynamic str) {
    return List<Work>.from(str.map((model) => Work.fromDataModel(model)));
  }

  static fromDataModel(data.Work dataModel) {
    return Work.fromJson(dataModel.toMap());
  }

  data.Work toDataModel() {
    return data.Work.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
