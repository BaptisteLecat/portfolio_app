// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'grand_total.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GrandTotal _$GrandTotalFromJson(Map<String, dynamic> json) {
  return _GrandTotal.fromJson(json);
}

/// @nodoc
class _$GrandTotalTearOff {
  const _$GrandTotalTearOff();

  _GrandTotal call(
      {String? decimal,
      String? digital,
      int? hours,
      int? minutes,
      String? text,
      double? totalSeconds}) {
    return _GrandTotal(
      decimal: decimal,
      digital: digital,
      hours: hours,
      minutes: minutes,
      text: text,
      totalSeconds: totalSeconds,
    );
  }

  GrandTotal fromJson(Map<String, Object?> json) {
    return GrandTotal.fromJson(json);
  }
}

/// @nodoc
const $GrandTotal = _$GrandTotalTearOff();

/// @nodoc
mixin _$GrandTotal {
  String? get decimal => throw _privateConstructorUsedError;
  String? get digital => throw _privateConstructorUsedError;
  int? get hours => throw _privateConstructorUsedError;
  int? get minutes => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  double? get totalSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrandTotalCopyWith<GrandTotal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrandTotalCopyWith<$Res> {
  factory $GrandTotalCopyWith(
          GrandTotal value, $Res Function(GrandTotal) then) =
      _$GrandTotalCopyWithImpl<$Res>;
  $Res call(
      {String? decimal,
      String? digital,
      int? hours,
      int? minutes,
      String? text,
      double? totalSeconds});
}

/// @nodoc
class _$GrandTotalCopyWithImpl<$Res> implements $GrandTotalCopyWith<$Res> {
  _$GrandTotalCopyWithImpl(this._value, this._then);

  final GrandTotal _value;
  // ignore: unused_field
  final $Res Function(GrandTotal) _then;

  @override
  $Res call({
    Object? decimal = freezed,
    Object? digital = freezed,
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? text = freezed,
    Object? totalSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      decimal: decimal == freezed
          ? _value.decimal
          : decimal // ignore: cast_nullable_to_non_nullable
              as String?,
      digital: digital == freezed
          ? _value.digital
          : digital // ignore: cast_nullable_to_non_nullable
              as String?,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSeconds: totalSeconds == freezed
          ? _value.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$GrandTotalCopyWith<$Res> implements $GrandTotalCopyWith<$Res> {
  factory _$GrandTotalCopyWith(
          _GrandTotal value, $Res Function(_GrandTotal) then) =
      __$GrandTotalCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? decimal,
      String? digital,
      int? hours,
      int? minutes,
      String? text,
      double? totalSeconds});
}

/// @nodoc
class __$GrandTotalCopyWithImpl<$Res> extends _$GrandTotalCopyWithImpl<$Res>
    implements _$GrandTotalCopyWith<$Res> {
  __$GrandTotalCopyWithImpl(
      _GrandTotal _value, $Res Function(_GrandTotal) _then)
      : super(_value, (v) => _then(v as _GrandTotal));

  @override
  _GrandTotal get _value => super._value as _GrandTotal;

  @override
  $Res call({
    Object? decimal = freezed,
    Object? digital = freezed,
    Object? hours = freezed,
    Object? minutes = freezed,
    Object? text = freezed,
    Object? totalSeconds = freezed,
  }) {
    return _then(_GrandTotal(
      decimal: decimal == freezed
          ? _value.decimal
          : decimal // ignore: cast_nullable_to_non_nullable
              as String?,
      digital: digital == freezed
          ? _value.digital
          : digital // ignore: cast_nullable_to_non_nullable
              as String?,
      hours: hours == freezed
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: minutes == freezed
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      totalSeconds: totalSeconds == freezed
          ? _value.totalSeconds
          : totalSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GrandTotal extends _GrandTotal with DiagnosticableTreeMixin {
  const _$_GrandTotal(
      {this.decimal,
      this.digital,
      this.hours,
      this.minutes,
      this.text,
      this.totalSeconds})
      : super._();

  factory _$_GrandTotal.fromJson(Map<String, dynamic> json) =>
      _$$_GrandTotalFromJson(json);

  @override
  final String? decimal;
  @override
  final String? digital;
  @override
  final int? hours;
  @override
  final int? minutes;
  @override
  final String? text;
  @override
  final double? totalSeconds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GrandTotal(decimal: $decimal, digital: $digital, hours: $hours, minutes: $minutes, text: $text, totalSeconds: $totalSeconds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GrandTotal'))
      ..add(DiagnosticsProperty('decimal', decimal))
      ..add(DiagnosticsProperty('digital', digital))
      ..add(DiagnosticsProperty('hours', hours))
      ..add(DiagnosticsProperty('minutes', minutes))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('totalSeconds', totalSeconds));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GrandTotal &&
            const DeepCollectionEquality().equals(other.decimal, decimal) &&
            const DeepCollectionEquality().equals(other.digital, digital) &&
            const DeepCollectionEquality().equals(other.hours, hours) &&
            const DeepCollectionEquality().equals(other.minutes, minutes) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.totalSeconds, totalSeconds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(decimal),
      const DeepCollectionEquality().hash(digital),
      const DeepCollectionEquality().hash(hours),
      const DeepCollectionEquality().hash(minutes),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(totalSeconds));

  @JsonKey(ignore: true)
  @override
  _$GrandTotalCopyWith<_GrandTotal> get copyWith =>
      __$GrandTotalCopyWithImpl<_GrandTotal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GrandTotalToJson(this);
  }
}

abstract class _GrandTotal extends GrandTotal {
  const factory _GrandTotal(
      {String? decimal,
      String? digital,
      int? hours,
      int? minutes,
      String? text,
      double? totalSeconds}) = _$_GrandTotal;
  const _GrandTotal._() : super._();

  factory _GrandTotal.fromJson(Map<String, dynamic> json) =
      _$_GrandTotal.fromJson;

  @override
  String? get decimal;
  @override
  String? get digital;
  @override
  int? get hours;
  @override
  int? get minutes;
  @override
  String? get text;
  @override
  double? get totalSeconds;
  @override
  @JsonKey(ignore: true)
  _$GrandTotalCopyWith<_GrandTotal> get copyWith =>
      throw _privateConstructorUsedError;
}
