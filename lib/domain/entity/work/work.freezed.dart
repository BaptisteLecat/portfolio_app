// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Work _$WorkFromJson(Map<String, dynamic> json) {
  return _Work.fromJson(json);
}

/// @nodoc
class _$WorkTearOff {
  const _$WorkTearOff();

  _Work call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? description,
      String? time,
      Company? company,
      Contract? contract,
      Location? location}) {
    return _Work(
      iri: iri,
      id: id,
      title: title,
      picture: picture,
      description: description,
      time: time,
      company: company,
      contract: contract,
      location: location,
    );
  }

  Work fromJson(Map<String, Object?> json) {
    return Work.fromJson(json);
  }
}

/// @nodoc
const $Work = _$WorkTearOff();

/// @nodoc
mixin _$Work {
  String? get iri => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  Company? get company => throw _privateConstructorUsedError;
  Contract? get contract => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkCopyWith<Work> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkCopyWith<$Res> {
  factory $WorkCopyWith(Work value, $Res Function(Work) then) =
      _$WorkCopyWithImpl<$Res>;
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? description,
      String? time,
      Company? company,
      Contract? contract,
      Location? location});

  $CompanyCopyWith<$Res>? get company;
  $ContractCopyWith<$Res>? get contract;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$WorkCopyWithImpl<$Res> implements $WorkCopyWith<$Res> {
  _$WorkCopyWithImpl(this._value, this._then);

  final Work _value;
  // ignore: unused_field
  final $Res Function(Work) _then;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? picture = freezed,
    Object? description = freezed,
    Object? time = freezed,
    Object? company = freezed,
    Object? contract = freezed,
    Object? location = freezed,
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
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      contract: contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
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
  $ContractCopyWith<$Res>? get contract {
    if (_value.contract == null) {
      return null;
    }

    return $ContractCopyWith<$Res>(_value.contract!, (value) {
      return _then(_value.copyWith(contract: value));
    });
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
}

/// @nodoc
abstract class _$WorkCopyWith<$Res> implements $WorkCopyWith<$Res> {
  factory _$WorkCopyWith(_Work value, $Res Function(_Work) then) =
      __$WorkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? description,
      String? time,
      Company? company,
      Contract? contract,
      Location? location});

  @override
  $CompanyCopyWith<$Res>? get company;
  @override
  $ContractCopyWith<$Res>? get contract;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$WorkCopyWithImpl<$Res> extends _$WorkCopyWithImpl<$Res>
    implements _$WorkCopyWith<$Res> {
  __$WorkCopyWithImpl(_Work _value, $Res Function(_Work) _then)
      : super(_value, (v) => _then(v as _Work));

  @override
  _Work get _value => super._value as _Work;

  @override
  $Res call({
    Object? iri = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? picture = freezed,
    Object? description = freezed,
    Object? time = freezed,
    Object? company = freezed,
    Object? contract = freezed,
    Object? location = freezed,
  }) {
    return _then(_Work(
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
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as Company?,
      contract: contract == freezed
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as Contract?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Work extends _Work with DiagnosticableTreeMixin {
  const _$_Work(
      {this.iri,
      this.id,
      this.title,
      this.picture,
      this.description,
      this.time,
      this.company,
      this.contract,
      this.location})
      : super._();

  factory _$_Work.fromJson(Map<String, dynamic> json) => _$$_WorkFromJson(json);

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
  final String? time;
  @override
  final Company? company;
  @override
  final Contract? contract;
  @override
  final Location? location;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Work(iri: $iri, id: $id, title: $title, picture: $picture, description: $description, time: $time, company: $company, contract: $contract, location: $location)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Work'))
      ..add(DiagnosticsProperty('iri', iri))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('picture', picture))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('contract', contract))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Work &&
            const DeepCollectionEquality().equals(other.iri, iri) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.contract, contract) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iri),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(contract),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$WorkCopyWith<_Work> get copyWith =>
      __$WorkCopyWithImpl<_Work>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkToJson(this);
  }
}

abstract class _Work extends Work {
  const factory _Work(
      {String? iri,
      int? id,
      String? title,
      String? picture,
      String? description,
      String? time,
      Company? company,
      Contract? contract,
      Location? location}) = _$_Work;
  const _Work._() : super._();

  factory _Work.fromJson(Map<String, dynamic> json) = _$_Work.fromJson;

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
  String? get time;
  @override
  Company? get company;
  @override
  Contract? get contract;
  @override
  Location? get location;
  @override
  @JsonKey(ignore: true)
  _$WorkCopyWith<_Work> get copyWith => throw _privateConstructorUsedError;
}
