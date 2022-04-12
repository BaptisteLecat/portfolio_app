// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mission _$MissionFromJson(Map<String, dynamic> json) {
  return _Mission.fromJson(json);
}

/// @nodoc
class _$MissionTearOff {
  const _$MissionTearOff();

  _Mission call(
      {String? iri,
      int? id,
      String? title,
      String? content,
      DateTime? created_at,
      Author? author}) {
    return _Mission(
      iri: iri,
      id: id,
      title: title,
      content: content,
      created_at: created_at,
      author: author,
    );
  }

  Mission fromJson(Map<String, Object?> json) {
    return Mission.fromJson(json);
  }
}

/// @nodoc
const $Mission = _$MissionTearOff();

/// @nodoc
mixin _$Mission {
  String? get iri => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionCopyWith<Mission> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionCopyWith<$Res> {
  factory $MissionCopyWith(Mission value, $Res Function(Mission) then) =
      _$MissionCopyWithImpl<$Res>;
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? content,
      DateTime? created_at,
      Author? author});

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$MissionCopyWithImpl<$Res> implements $MissionCopyWith<$Res> {
  _$MissionCopyWithImpl(this._value, this._then);

  final Mission _value;
  // ignore: unused_field
  final $Res Function(Mission) _then;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? created_at = freezed,
    Object? author = freezed,
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
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ));
  }

  @override
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

/// @nodoc
abstract class _$MissionCopyWith<$Res> implements $MissionCopyWith<$Res> {
  factory _$MissionCopyWith(_Mission value, $Res Function(_Mission) then) =
      __$MissionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? content,
      DateTime? created_at,
      Author? author});

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$MissionCopyWithImpl<$Res> extends _$MissionCopyWithImpl<$Res>
    implements _$MissionCopyWith<$Res> {
  __$MissionCopyWithImpl(_Mission _value, $Res Function(_Mission) _then)
      : super(_value, (v) => _then(v as _Mission));

  @override
  _Mission get _value => super._value as _Mission;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? created_at = freezed,
    Object? author = freezed,
  }) {
    return _then(_Mission(
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
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: created_at == freezed
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mission extends _Mission with DiagnosticableTreeMixin {
  const _$_Mission(
      {this.iri,
      this.id,
      this.title,
      this.content,
      this.created_at,
      this.author})
      : super._();

  factory _$_Mission.fromJson(Map<String, dynamic> json) =>
      _$$_MissionFromJson(json);

  @override
  final String? iri;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final DateTime? created_at;
  @override
  final Author? author;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Mission(iri: $iri, id: $id, title: $title, content: $content, created_at: $created_at, author: $author)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Mission'))
      ..add(DiagnosticsProperty('iri', iri))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('created_at', created_at))
      ..add(DiagnosticsProperty('author', author));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Mission &&
            const DeepCollectionEquality().equals(other.iri, iri) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            const DeepCollectionEquality().equals(other.author, author));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iri),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(created_at),
      const DeepCollectionEquality().hash(author));

  @JsonKey(ignore: true)
  @override
  _$MissionCopyWith<_Mission> get copyWith =>
      __$MissionCopyWithImpl<_Mission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MissionToJson(this);
  }
}

abstract class _Mission extends Mission {
  const factory _Mission(
      {String? iri,
      int? id,
      String? title,
      String? content,
      DateTime? created_at,
      Author? author}) = _$_Mission;
  const _Mission._() : super._();

  factory _Mission.fromJson(Map<String, dynamic> json) = _$_Mission.fromJson;

  @override
  String? get iri;
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get content;
  @override
  DateTime? get created_at;
  @override
  Author? get author;
  @override
  @JsonKey(ignore: true)
  _$MissionCopyWith<_Mission> get copyWith =>
      throw _privateConstructorUsedError;
}
