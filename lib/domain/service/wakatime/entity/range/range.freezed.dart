// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'range.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Range _$RangeFromJson(Map<String, dynamic> json) {
  return _Range.fromJson(json);
}

/// @nodoc
class _$RangeTearOff {
  const _$RangeTearOff();

  _Range call(
      {DateTime? date,
      DateTime? end,
      DateTime? start,
      String? text,
      String? timezone}) {
    return _Range(
      date: date,
      end: end,
      start: start,
      text: text,
      timezone: timezone,
    );
  }

  Range fromJson(Map<String, Object?> json) {
    return Range.fromJson(json);
  }
}

/// @nodoc
const $Range = _$RangeTearOff();

/// @nodoc
mixin _$Range {
  DateTime? get date => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RangeCopyWith<Range> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeCopyWith<$Res> {
  factory $RangeCopyWith(Range value, $Res Function(Range) then) =
      _$RangeCopyWithImpl<$Res>;
  $Res call(
      {DateTime? date,
      DateTime? end,
      DateTime? start,
      String? text,
      String? timezone});
}

/// @nodoc
class _$RangeCopyWithImpl<$Res> implements $RangeCopyWith<$Res> {
  _$RangeCopyWithImpl(this._value, this._then);

  final Range _value;
  // ignore: unused_field
  final $Res Function(Range) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? end = freezed,
    Object? start = freezed,
    Object? text = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RangeCopyWith<$Res> implements $RangeCopyWith<$Res> {
  factory _$RangeCopyWith(_Range value, $Res Function(_Range) then) =
      __$RangeCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime? date,
      DateTime? end,
      DateTime? start,
      String? text,
      String? timezone});
}

/// @nodoc
class __$RangeCopyWithImpl<$Res> extends _$RangeCopyWithImpl<$Res>
    implements _$RangeCopyWith<$Res> {
  __$RangeCopyWithImpl(_Range _value, $Res Function(_Range) _then)
      : super(_value, (v) => _then(v as _Range));

  @override
  _Range get _value => super._value as _Range;

  @override
  $Res call({
    Object? date = freezed,
    Object? end = freezed,
    Object? start = freezed,
    Object? text = freezed,
    Object? timezone = freezed,
  }) {
    return _then(_Range(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: timezone == freezed
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Range extends _Range with DiagnosticableTreeMixin {
  const _$_Range({this.date, this.end, this.start, this.text, this.timezone})
      : super._();

  factory _$_Range.fromJson(Map<String, dynamic> json) =>
      _$$_RangeFromJson(json);

  @override
  final DateTime? date;
  @override
  final DateTime? end;
  @override
  final DateTime? start;
  @override
  final String? text;
  @override
  final String? timezone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Range(date: $date, end: $end, start: $start, text: $text, timezone: $timezone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Range'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('timezone', timezone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Range &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.timezone, timezone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(timezone));

  @JsonKey(ignore: true)
  @override
  _$RangeCopyWith<_Range> get copyWith =>
      __$RangeCopyWithImpl<_Range>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RangeToJson(this);
  }
}

abstract class _Range extends Range {
  const factory _Range(
      {DateTime? date,
      DateTime? end,
      DateTime? start,
      String? text,
      String? timezone}) = _$_Range;
  const _Range._() : super._();

  factory _Range.fromJson(Map<String, dynamic> json) = _$_Range.fromJson;

  @override
  DateTime? get date;
  @override
  DateTime? get end;
  @override
  DateTime? get start;
  @override
  String? get text;
  @override
  String? get timezone;
  @override
  @JsonKey(ignore: true)
  _$RangeCopyWith<_Range> get copyWith => throw _privateConstructorUsedError;
}
