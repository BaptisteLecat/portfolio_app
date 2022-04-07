import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio_app/domain/entity/entity.dart';
import 'package:portfolio_app/data/model/contract/contract.dart' as data;
part 'contract.freezed.dart';
part 'contract.g.dart';

@Freezed()
class Contract with _$Contract {
  const Contract._();
  const factory Contract({
    String? iri,
    int? id,
    String? label,
  }) = _Contract;

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);
  static const empty = Contract();

  static List<Contract> listFromMapData(dynamic str) {
    return List<Contract>.from(
        str.map((model) => Contract.fromDataModel(model)));
  }

  static fromDataModel(data.Contract dataModel) {
    return Contract.fromJson(dataModel.toMap());
  }

  data.Contract toDataModel() {
    return data.Contract.fromJson(this.toJson());
  }

  dynamic getProp(String propertyName) {
    var _mapRep = toJson();
    if (_mapRep.containsKey(propertyName)) {
      return _mapRep[propertyName];
    }
    throw ArgumentError('property not found');
  }
}
