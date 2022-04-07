import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/company/company.dart' as data;
part 'company.freezed.dart';
part 'company.g.dart';

@Freezed()
class Company with _$Company {
  const Company._();
  const factory Company({
    String? iri,
    int? id,
    String? name,
    String? description,
    int? employees,
    Location? location,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
  static const empty = Company();

  static List<Company> listFromMapData(dynamic str) {
    return List<Company>.from(str.map((model) => Company.fromDataModel(model)));
  }

  static fromDataModel(data.Company dataModel) {
    return Company.fromJson(dataModel.toMap());
  }

  data.Company toDataModel() {
    return data.Company.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
