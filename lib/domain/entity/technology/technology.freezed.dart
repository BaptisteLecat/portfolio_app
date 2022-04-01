// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'technology.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Technology _$TechnologyFromJson(Map<String, dynamic> json) {
  return _Technology.fromJson(json);
}

/// @nodoc
class _$TechnologyTearOff {
  const _$TechnologyTearOff();

  _Technology call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? description}) {
    return _Technology(
      iri: iri,
      id: id,
      title: title,
      picture: picture,
      description: description,
    );
  }

  Technology fromJson(Map<String, Object?> json) {
    return Technology.fromJson(json);
  }
}

/// @nodoc
const $Technology = _$TechnologyTearOff();

/// @nodoc
mixin _$Technology {
  String? get iri => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechnologyCopyWith<Technology> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologyCopyWith<$Res> {
  factory $TechnologyCopyWith(
          Technology value, $Res Function(Technology) then) =
      _$TechnologyCopyWithImpl<$Res>;
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? description});
}

/// @nodoc
class _$TechnologyCopyWithImpl<$Res> implements $TechnologyCopyWith<$Res> {
  _$TechnologyCopyWithImpl(this._value, this._then);

  final Technology _value;
  // ignore: unused_field
  final $Res Function(Technology) _then;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? picture = freezed,
    Object? description = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TechnologyCopyWith<$Res> implements $TechnologyCopyWith<$Res> {
  factory _$TechnologyCopyWith(
          _Technology value, $Res Function(_Technology) then) =
      __$TechnologyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? description});
}

/// @nodoc
class __$TechnologyCopyWithImpl<$Res> extends _$TechnologyCopyWithImpl<$Res>
    implements _$TechnologyCopyWith<$Res> {
  __$TechnologyCopyWithImpl(
      _Technology _value, $Res Function(_Technology) _then)
      : super(_value, (v) => _then(v as _Technology));

  @override
  _Technology get _value => super._value as _Technology;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? picture = freezed,
    Object? description = freezed,
  }) {
    return _then(_Technology(
      iri: iri == freezed
          ? _value.iri
          : iri // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Technology extends _Technology with DiagnosticableTreeMixin {
  const _$_Technology(
      {this.iri, this.id, this.title, this.picture, this.description})
      : super._();

  factory _$_Technology.fromJson(Map<String, dynamic> json) =>
      _$$_TechnologyFromJson(json);

  @override
  final String? iri;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? picture;
  @override
  final String? description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Technology(iri: $iri, id: $id, title: $title, picture: $picture, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Technology'))
      ..add(DiagnosticsProperty('iri', iri))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Technology &&
            const DeepCollectionEquality().equals(other.iri, iri) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iri),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$TechnologyCopyWith<_Technology> get copyWith =>
      __$TechnologyCopyWithImpl<_Technology>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechnologyToJson(this);
  }
}

abstract class _Technology extends Technology {
  const factory _Technology(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? description}) = _$_Technology;
  const _Technology._() : super._();

  factory _Technology.fromJson(Map<String, dynamic> json) =
      _$_Technology.fromJson;

  @override
  String? get iri;
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get picture;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$TechnologyCopyWith<_Technology> get copyWith =>
      throw _privateConstructorUsedError;
}
