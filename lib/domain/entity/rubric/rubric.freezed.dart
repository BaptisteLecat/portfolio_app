// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rubric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rubric _$RubricFromJson(Map<String, dynamic> json) {
  return _Rubric.fromJson(json);
}

/// @nodoc
class _$RubricTearOff {
  const _$RubricTearOff();

  _Rubric call(
      {String? iri,
      int? id,
      String? title,
      String? subtitle,
      String? picture,
      String? content,
      Project? project}) {
    return _Rubric(
      iri: iri,
      id: id,
      title: title,
      subtitle: subtitle,
      picture: picture,
      content: content,
      project: project,
    );
  }

  Rubric fromJson(Map<String, Object?> json) {
    return Rubric.fromJson(json);
  }
}

/// @nodoc
const $Rubric = _$RubricTearOff();

/// @nodoc
mixin _$Rubric {
  String? get iri => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  Project? get project => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RubricCopyWith<Rubric> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RubricCopyWith<$Res> {
  factory $RubricCopyWith(Rubric value, $Res Function(Rubric) then) =
      _$RubricCopyWithImpl<$Res>;
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? subtitle,
      String? picture,
      String? content,
      Project? project});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class _$RubricCopyWithImpl<$Res> implements $RubricCopyWith<$Res> {
  _$RubricCopyWithImpl(this._value, this._then);

  final Rubric _value;
  // ignore: unused_field
  final $Res Function(Rubric) _then;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? picture = freezed,
    Object? content = freezed,
    Object? project = freezed,
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
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }

  @override
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc
abstract class _$RubricCopyWith<$Res> implements $RubricCopyWith<$Res> {
  factory _$RubricCopyWith(_Rubric value, $Res Function(_Rubric) then) =
      __$RubricCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? subtitle,
      String? picture,
      String? content,
      Project? project});

  @override
  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$RubricCopyWithImpl<$Res> extends _$RubricCopyWithImpl<$Res>
    implements _$RubricCopyWith<$Res> {
  __$RubricCopyWithImpl(_Rubric _value, $Res Function(_Rubric) _then)
      : super(_value, (v) => _then(v as _Rubric));

  @override
  _Rubric get _value => super._value as _Rubric;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? picture = freezed,
    Object? content = freezed,
    Object? project = freezed,
  }) {
    return _then(_Rubric(
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
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rubric extends _Rubric with DiagnosticableTreeMixin {
  const _$_Rubric(
      {this.iri,
      this.id,
      this.title,
      this.subtitle,
      this.picture,
      this.content,
      this.project})
      : super._();

  factory _$_Rubric.fromJson(Map<String, dynamic> json) =>
      _$$_RubricFromJson(json);

  @override
  final String? iri;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? picture;
  @override
  final String? content;
  @override
  final Project? project;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Rubric(iri: $iri, id: $id, title: $title, subtitle: $subtitle, picture: $picture, content: $content, project: $project)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Rubric'))
      ..add(DiagnosticsProperty('iri', iri))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('subtitle', subtitle))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('project', project));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rubric &&
            const DeepCollectionEquality().equals(other.iri, iri) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.project, project));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iri),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(project));

  @JsonKey(ignore: true)
  @override
  _$RubricCopyWith<_Rubric> get copyWith =>
      __$RubricCopyWithImpl<_Rubric>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RubricToJson(this);
  }
}

abstract class _Rubric extends Rubric {
  const factory _Rubric(
      {String? iri,
      int? id,
      String? title,
      String? subtitle,
      String? picture,
      String? content,
      Project? project}) = _$_Rubric;
  const _Rubric._() : super._();

  factory _Rubric.fromJson(Map<String, dynamic> json) = _$_Rubric.fromJson;

  @override
  String? get iri;
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get picture;
  @override
  String? get content;
  @override
  Project? get project;
  @override
  @JsonKey(ignore: true)
  _$RubricCopyWith<_Rubric> get copyWith => throw _privateConstructorUsedError;
}
