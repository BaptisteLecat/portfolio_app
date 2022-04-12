// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wakatime_code_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WakatimeCodeActivity _$WakatimeCodeActivityFromJson(Map<String, dynamic> json) {
  return _WakatimeCodeActivity.fromJson(json);
}

/// @nodoc
class _$WakatimeCodeActivityTearOff {
  const _$WakatimeCodeActivityTearOff();

  _WakatimeCodeActivity call({GrandTotal? grandTotal, Range? range}) {
    return _WakatimeCodeActivity(
      grandTotal: grandTotal,
      range: range,
    );
  }

  WakatimeCodeActivity fromJson(Map<String, Object?> json) {
    return WakatimeCodeActivity.fromJson(json);
  }
}

/// @nodoc
const $WakatimeCodeActivity = _$WakatimeCodeActivityTearOff();

/// @nodoc
mixin _$WakatimeCodeActivity {
  GrandTotal? get grandTotal => throw _privateConstructorUsedError;
  Range? get range => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WakatimeCodeActivityCopyWith<WakatimeCodeActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WakatimeCodeActivityCopyWith<$Res> {
  factory $WakatimeCodeActivityCopyWith(WakatimeCodeActivity value,
          $Res Function(WakatimeCodeActivity) then) =
      _$WakatimeCodeActivityCopyWithImpl<$Res>;
  $Res call({GrandTotal? grandTotal, Range? range});

  $GrandTotalCopyWith<$Res>? get grandTotal;
  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class _$WakatimeCodeActivityCopyWithImpl<$Res>
    implements $WakatimeCodeActivityCopyWith<$Res> {
  _$WakatimeCodeActivityCopyWithImpl(this._value, this._then);

  final WakatimeCodeActivity _value;
  // ignore: unused_field
  final $Res Function(WakatimeCodeActivity) _then;

  @override
  $Res call({
    Object? grandTotal = freezed,
    Object? range = freezed,
  }) {
    return _then(_value.copyWith(
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as GrandTotal?,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
    ));
  }

  @override
  $GrandTotalCopyWith<$Res>? get grandTotal {
    if (_value.grandTotal == null) {
      return null;
    }

    return $GrandTotalCopyWith<$Res>(_value.grandTotal!, (value) {
      return _then(_value.copyWith(grandTotal: value));
    });
  }

  @override
  $RangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value));
    });
  }
}

/// @nodoc
abstract class _$WakatimeCodeActivityCopyWith<$Res>
    implements $WakatimeCodeActivityCopyWith<$Res> {
  factory _$WakatimeCodeActivityCopyWith(_WakatimeCodeActivity value,
          $Res Function(_WakatimeCodeActivity) then) =
      __$WakatimeCodeActivityCopyWithImpl<$Res>;
  @override
  $Res call({GrandTotal? grandTotal, Range? range});

  @override
  $GrandTotalCopyWith<$Res>? get grandTotal;
  @override
  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class __$WakatimeCodeActivityCopyWithImpl<$Res>
    extends _$WakatimeCodeActivityCopyWithImpl<$Res>
    implements _$WakatimeCodeActivityCopyWith<$Res> {
  __$WakatimeCodeActivityCopyWithImpl(
      _WakatimeCodeActivity _value, $Res Function(_WakatimeCodeActivity) _then)
      : super(_value, (v) => _then(v as _WakatimeCodeActivity));

  @override
  _WakatimeCodeActivity get _value => super._value as _WakatimeCodeActivity;

  @override
  $Res call({
    Object? grandTotal = freezed,
    Object? range = freezed,
  }) {
    return _then(_WakatimeCodeActivity(
      grandTotal: grandTotal == freezed
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as GrandTotal?,
      range: range == freezed
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WakatimeCodeActivity extends _WakatimeCodeActivity
    with DiagnosticableTreeMixin {
  const _$_WakatimeCodeActivity({this.grandTotal, this.range}) : super._();

  factory _$_WakatimeCodeActivity.fromJson(Map<String, dynamic> json) =>
      _$$_WakatimeCodeActivityFromJson(json);

  @override
  final GrandTotal? grandTotal;
  @override
  final Range? range;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WakatimeCodeActivity(grandTotal: $grandTotal, range: $range)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WakatimeCodeActivity'))
      ..add(DiagnosticsProperty('grandTotal', grandTotal))
      ..add(DiagnosticsProperty('range', range));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WakatimeCodeActivity &&
            const DeepCollectionEquality()
                .equals(other.grandTotal, grandTotal) &&
            const DeepCollectionEquality().equals(other.range, range));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(grandTotal),
      const DeepCollectionEquality().hash(range));

  @JsonKey(ignore: true)
  @override
  _$WakatimeCodeActivityCopyWith<_WakatimeCodeActivity> get copyWith =>
      __$WakatimeCodeActivityCopyWithImpl<_WakatimeCodeActivity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WakatimeCodeActivityToJson(this);
  }
}

abstract class _WakatimeCodeActivity extends WakatimeCodeActivity {
  const factory _WakatimeCodeActivity({GrandTotal? grandTotal, Range? range}) =
      _$_WakatimeCodeActivity;
  const _WakatimeCodeActivity._() : super._();

  factory _WakatimeCodeActivity.fromJson(Map<String, dynamic> json) =
      _$_WakatimeCodeActivity.fromJson;

  @override
  GrandTotal? get grandTotal;
  @override
  Range? get range;
  @override
  @JsonKey(ignore: true)
  _$WakatimeCodeActivityCopyWith<_WakatimeCodeActivity> get copyWith =>
      throw _privateConstructorUsedError;
}
