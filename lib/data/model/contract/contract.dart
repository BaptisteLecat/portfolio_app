import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'contract.g.dart';

@JsonSerializable()
class Contract {
  final String? iri;
  final int? id;
  final String? label;
  const Contract({
    this.iri,
    this.id,
    this.label,
  });

  Map<String, dynamic> toJson() => _$ContractToJson(this);

  factory Contract.fromJson(Map<String, dynamic> json) =>
      _$ContractFromJson(json);

  static _toJsonIri(dynamic data) {
    String text = data.runtimeType.toString();
    RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');
    String result = text
        .replaceAllMapped(exp, (Match m) => ('_' + m.group(0)!))
        .toLowerCase();
    if (data != null) {
      return 'api/${result + 's'}/${data.id}';
    }
    return null;
  }

  static List<Contract> listFromJson(dynamic str) =>
      List<Contract>.from(str.map((x) => Contract.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'iri': iri,
      'id': id,
      'label': label,
    };
  }

  factory Contract.fromMap(Map<String, dynamic> map) {
    return Contract(
      iri: map['iri'],
      id: map['id']?.toInt(),
      label: map['label'],
    );
  }
}
