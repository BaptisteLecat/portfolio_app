import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio_app/data/service/wakatime/model/grand_total.dart';
import 'package:portfolio_app/data/service/wakatime/model/range.dart';

part 'wakatime_code_activity.g.dart';

@JsonSerializable()
class WakatimeCodeActivity {
  @JsonKey(name: 'grand_total')
  final GrandTotal? grandTotal;
  final Range? range;
  const WakatimeCodeActivity({
    this.grandTotal,
    this.range,
  });

  Map<String, dynamic> toJson() => _$WakatimeCodeActivityToJson(this);

  factory WakatimeCodeActivity.fromJson(Map<String, dynamic> json) =>
      _$WakatimeCodeActivityFromJson(json);

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

  static List<WakatimeCodeActivity> listFromJson(dynamic str) =>
      List<WakatimeCodeActivity>.from(
          str.map((x) => WakatimeCodeActivity.fromJson(x)));

  Map<String, dynamic> toMap() {
    return {
      'grandTotal': grandTotal?.toMap(),
      'range': range?.toMap(),
    };
  }

  factory WakatimeCodeActivity.fromMap(Map<String, dynamic> map) {
    return WakatimeCodeActivity(
      grandTotal: map['grandTotal'] != null
          ? GrandTotal.fromMap(map['grandTotal'])
          : null,
      range: map['range'] != null ? Range.fromMap(map['range']) : null,
    );
  }
}
