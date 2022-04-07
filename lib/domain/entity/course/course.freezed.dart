// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
class _$CourseTearOff {
  const _$CourseTearOff();

  _Course call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? time,
      String? description,
      Location? location,
      School? school}) {
    return _Course(
      iri: iri,
      id: id,
      title: title,
      picture: picture,
      time: time,
      description: description,
      location: location,
      school: school,
    );
  }

  Course fromJson(Map<String, Object?> json) {
    return Course.fromJson(json);
  }
}

/// @nodoc
const $Course = _$CourseTearOff();

/// @nodoc
mixin _$Course {
  String? get iri => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  School? get school => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? time,
      String? description,
      Location? location,
      School? school});

  $LocationCopyWith<$Res>? get location;
  $SchoolCopyWith<$Res>? get school;
}

/// @nodoc
class _$CourseCopyWithImpl<$Res> implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  final Course _value;
  // ignore: unused_field
  final $Res Function(Course) _then;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? picture = freezed,
    Object? time = freezed,
    Object? description = freezed,
    Object? location = freezed,
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
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
    ));
  }

  @override
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value));
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
abstract class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) then) =
      __$CourseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? time,
      String? description,
      Location? location,
      School? school});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $SchoolCopyWith<$Res>? get school;
}

/// @nodoc
class __$CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(_Course _value, $Res Function(_Course) _then)
      : super(_value, (v) => _then(v as _Course));

  @override
  _Course get _value => super._value as _Course;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? picture = freezed,
    Object? time = freezed,
    Object? description = freezed,
    Object? location = freezed,
    Object? school = freezed,
  }) {
    return _then(_Course(
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
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      school: school == freezed
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Course extends _Course with DiagnosticableTreeMixin {
  const _$_Course(
      {this.iri,
      this.id,
      this.title,
      this.picture,
      this.time,
      this.description,
      this.location,
      this.school})
      : super._();

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);

  @override
  final String? iri;
  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? picture;
  @override
  final String? time;
  @override
  final String? description;
  @override
  final Location? location;
  @override
  final School? school;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Course(iri: $iri, id: $id, title: $title, picture: $picture, time: $time, description: $description, location: $location, school: $school)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Course'))
      ..add(DiagnosticsProperty('iri', iri))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('school', school));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Course &&
            const DeepCollectionEquality().equals(other.iri, iri) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.school, school));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iri),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(school));

  @JsonKey(ignore: true)
  @override
  _$CourseCopyWith<_Course> get copyWith =>
      __$CourseCopyWithImpl<_Course>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseToJson(this);
  }
}

abstract class _Course extends Course {
  const factory _Course(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? time,
      String? description,
      Location? location,
      School? school}) = _$_Course;
  const _Course._() : super._();

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  String? get iri;
  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get picture;
  @override
  String? get time;
  @override
  String? get description;
  @override
  Location? get location;
  @override
  School? get school;
  @override
  @JsonKey(ignore: true)
  _$CourseCopyWith<_Course> get copyWith => throw _privateConstructorUsedError;
}
