// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'planets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Planets _$PlanetsFromJson(Map<String, dynamic> json) {
  return _Planets.fromJson(json);
}

/// @nodoc
mixin _$Planets {
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get distance => throw _privateConstructorUsedError;
  String get lightSpeed => throw _privateConstructorUsedError;
  String get yearInDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanetsCopyWith<Planets> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanetsCopyWith<$Res> {
  factory $PlanetsCopyWith(Planets value, $Res Function(Planets) then) =
      _$PlanetsCopyWithImpl<$Res, Planets>;
  @useResult
  $Res call(
      {String name,
      String imageUrl,
      String description,
      String distance,
      String lightSpeed,
      String yearInDays});
}

/// @nodoc
class _$PlanetsCopyWithImpl<$Res, $Val extends Planets>
    implements $PlanetsCopyWith<$Res> {
  _$PlanetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? distance = null,
    Object? lightSpeed = null,
    Object? yearInDays = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      lightSpeed: null == lightSpeed
          ? _value.lightSpeed
          : lightSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      yearInDays: null == yearInDays
          ? _value.yearInDays
          : yearInDays // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanetsImplCopyWith<$Res> implements $PlanetsCopyWith<$Res> {
  factory _$$PlanetsImplCopyWith(
          _$PlanetsImpl value, $Res Function(_$PlanetsImpl) then) =
      __$$PlanetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String imageUrl,
      String description,
      String distance,
      String lightSpeed,
      String yearInDays});
}

/// @nodoc
class __$$PlanetsImplCopyWithImpl<$Res>
    extends _$PlanetsCopyWithImpl<$Res, _$PlanetsImpl>
    implements _$$PlanetsImplCopyWith<$Res> {
  __$$PlanetsImplCopyWithImpl(
      _$PlanetsImpl _value, $Res Function(_$PlanetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? distance = null,
    Object? lightSpeed = null,
    Object? yearInDays = null,
  }) {
    return _then(_$PlanetsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as String,
      lightSpeed: null == lightSpeed
          ? _value.lightSpeed
          : lightSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      yearInDays: null == yearInDays
          ? _value.yearInDays
          : yearInDays // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanetsImpl with DiagnosticableTreeMixin implements _Planets {
  const _$PlanetsImpl(
      {required this.name,
      required this.imageUrl,
      required this.description,
      required this.distance,
      required this.lightSpeed,
      required this.yearInDays});

  factory _$PlanetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanetsImplFromJson(json);

  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String description;
  @override
  final String distance;
  @override
  final String lightSpeed;
  @override
  final String yearInDays;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Planets(name: $name, imageUrl: $imageUrl, description: $description, distance: $distance, lightSpeed: $lightSpeed, yearInDays: $yearInDays)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Planets'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('distance', distance))
      ..add(DiagnosticsProperty('lightSpeed', lightSpeed))
      ..add(DiagnosticsProperty('yearInDays', yearInDays));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanetsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.lightSpeed, lightSpeed) ||
                other.lightSpeed == lightSpeed) &&
            (identical(other.yearInDays, yearInDays) ||
                other.yearInDays == yearInDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl, description,
      distance, lightSpeed, yearInDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanetsImplCopyWith<_$PlanetsImpl> get copyWith =>
      __$$PlanetsImplCopyWithImpl<_$PlanetsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanetsImplToJson(
      this,
    );
  }
}

abstract class _Planets implements Planets {
  const factory _Planets(
      {required final String name,
      required final String imageUrl,
      required final String description,
      required final String distance,
      required final String lightSpeed,
      required final String yearInDays}) = _$PlanetsImpl;

  factory _Planets.fromJson(Map<String, dynamic> json) = _$PlanetsImpl.fromJson;

  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get description;
  @override
  String get distance;
  @override
  String get lightSpeed;
  @override
  String get yearInDays;
  @override
  @JsonKey(ignore: true)
  _$$PlanetsImplCopyWith<_$PlanetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
