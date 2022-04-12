// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Theme _$ThemeFromJson(Map<String, dynamic> json) {
  return _Theme.fromJson(json);
}

/// @nodoc
class _$ThemeTearOff {
  const _$ThemeTearOff();

  _Theme call({String? iri, int? id, String? label}) {
    return _Theme(
      iri: iri,
      id: id,
      label: label,
    );
  }

  Theme fromJson(Map<String, Object?> json) {
    return Theme.fromJson(json);
  }
}

/// @nodoc
const $Theme = _$ThemeTearOff();

/// @nodoc
mixin _$Theme {
  String? get iri => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeCopyWith<Theme> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeCopyWith<$Res> {
  factory $ThemeCopyWith(Theme value, $Res Function(Theme) then) =
      _$ThemeCopyWithImpl<$Res>;
  $Res call({String? iri, int? id, String? label});
}

/// @nodoc
class _$ThemeCopyWithImpl<$Res> implements $ThemeCopyWith<$Res> {
  _$ThemeCopyWithImpl(this._value, this._then);

  final Theme _value;
  // ignore: unused_field
  final $Res Function(Theme) _then;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      iri: iri == freezed
          ? _value.iri
          : iri // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ThemeCopyWith<$Res> implements $ThemeCopyWith<$Res> {
  factory _$ThemeCopyWith(_Theme value, $Res Function(_Theme) then) =
      __$ThemeCopyWithImpl<$Res>;
  @override
  $Res call({String? iri, int? id, String? label});
}

/// @nodoc
class __$ThemeCopyWithImpl<$Res> extends _$ThemeCopyWithImpl<$Res>
    implements _$ThemeCopyWith<$Res> {
  __$ThemeCopyWithImpl(_Theme _value, $Res Function(_Theme) _then)
      : super(_value, (v) => _then(v as _Theme));

  @override
  _Theme get _value => super._value as _Theme;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? label = freezed,
  }) {
    return _then(_Theme(
      iri: iri == freezed
          ? _value.iri
          : iri // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Theme extends _Theme with DiagnosticableTreeMixin {
  const _$_Theme({this.iri, this.id, this.label}) : super._();

  factory _$_Theme.fromJson(Map<String, dynamic> json) =>
      _$$_ThemeFromJson(json);

  @override
  final String? iri;
  @override
  final int? id;
  @override
  final String? label;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Theme(iri: $iri, id: $id, label: $label)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Theme'))
      ..add(DiagnosticsProperty('iri', iri))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('label', label));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Theme &&
            const DeepCollectionEquality().equals(other.iri, iri) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.label, label));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iri),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(label));

  @JsonKey(ignore: true)
  @override
  _$ThemeCopyWith<_Theme> get copyWith =>
      __$ThemeCopyWithImpl<_Theme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThemeToJson(this);
  }
}

abstract class _Theme extends Theme {
  const factory _Theme({String? iri, int? id, String? label}) = _$_Theme;
  const _Theme._() : super._();

  factory _Theme.fromJson(Map<String, dynamic> json) = _$_Theme.fromJson;

  @override
  String? get iri;
  @override
  int? get id;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$ThemeCopyWith<_Theme> get copyWith => throw _privateConstructorUsedError;
}
