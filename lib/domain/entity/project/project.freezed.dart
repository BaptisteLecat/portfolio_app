// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
class _$ProjectTearOff {
  const _$ProjectTearOff();

  _Project call(
      {String? iri,
      int? id,
      String? name,
      String? description,
      String? picture,
      DateTime? start,
      DateTime? end,
      Company? company,
      School? school}) {
    return _Project(
      iri: iri,
      id: id,
      name: name,
      description: description,
      picture: picture,
      start: start,
      end: end,
      company: company,
      school: school,
    );
  }

  Project fromJson(Map<String, Object?> json) {
    return Project.fromJson(json);
  }
}

/// @nodoc
const $Project = _$ProjectTearOff();

/// @nodoc
mixin _$Project {
  String? get iri => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;
  School? get school => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {String? iri,
      int? id,
      String? name,
      String? description,
      String? picture,
      DateTime? start,
      DateTime? end,
      Company? company,
      School? school});

  $CompanyCopyWith<$Res>? get company;
  $SchoolCopyWith<$Res>? get school;
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? picture = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? company = freezed,
    Object? school = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
    ));
  }

  @override
  $CompanyCopyWith<$Res>? get company {
    if (_value.company == null) {
      return null;
    }

    return $CompanyCopyWith<$Res>(_value.company!, (value) {
      return _then(_value.copyWith(company: value));
    });
  }

  @override
  $SchoolCopyWith<$Res>? get school {
    if (_value.school == null) {
      return null;
    }

    return $SchoolCopyWith<$Res>(_value.school!, (value) {
      return _then(_value.copyWith(school: value));
    });
  }
}

/// @nodoc
abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) =
      __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? iri,
      int? id,
      String? name,
      String? description,
      String? picture,
      DateTime? start,
      DateTime? end,
      Company? company,
      School? school});

  @override
  $CompanyCopyWith<$Res>? get company;
  @override
  $SchoolCopyWith<$Res>? get school;
}

/// @nodoc
class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then)
      : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? picture = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? company = freezed,
    Object? school = freezed,
  }) {
    return _then(_Project(
      iri: iri == freezed
          ? _value.iri
          : iri // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project extends _Project with DiagnosticableTreeMixin {
  const _$_Project(
      {this.iri,
      this.id,
      this.name,
      this.description,
      this.picture,
      this.start,
      this.end,
      this.company,
      this.school})
      : super._();

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  final String? iri;
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? picture;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final Company? company;
  @override
  final School? school;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Project(iri: $iri, id: $id, name: $name, description: $description, picture: $picture, start: $start, end: $end, company: $company, school: $school)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Project'))
      ..add(DiagnosticsProperty('iri', iri))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('end', end))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('school', school));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Project &&
            const DeepCollectionEquality().equals(other.iri, iri) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.school, school));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iri),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(school));

  @JsonKey(ignore: true)
  @override
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(this);
  }
}

abstract class _Project extends Project {
  const factory _Project(
      {String? iri,
      int? id,
      String? name,
      String? description,
      String? picture,
      DateTime? start,
      DateTime? end,
      Company? company,
      School? school}) = _$_Project;
  const _Project._() : super._();

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  String? get iri;
  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get picture;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  Company? get company;
  @override
  School? get school;
  @override
  @JsonKey(ignore: true)
  _$ProjectCopyWith<_Project> get copyWith =>
      throw _privateConstructorUsedError;
}
