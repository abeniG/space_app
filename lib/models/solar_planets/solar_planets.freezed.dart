// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'solar_planets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SolarPlanets _$SolarPlanetsFromJson(Map<String, dynamic> json) {
  return _SolarPlanets.fromJson(json);
}

/// @nodoc
mixin _$SolarPlanets {
  String get englishName => throw _privateConstructorUsedError;
  double get gravity => throw _privateConstructorUsedError;
  double get avgTemp => throw _privateConstructorUsedError;
  String get discoveredBy => throw _privateConstructorUsedError;
  double get meanRadius => throw _privateConstructorUsedError;
  bool get isPlanet => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get discription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SolarPlanetsCopyWith<SolarPlanets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolarPlanetsCopyWith<$Res> {
  factory $SolarPlanetsCopyWith(
          SolarPlanets value, $Res Function(SolarPlanets) then) =
      _$SolarPlanetsCopyWithImpl<$Res, SolarPlanets>;
  @useResult
  $Res call(
      {String englishName,
      double gravity,
      double avgTemp,
      String discoveredBy,
      double meanRadius,
      bool isPlanet,
      String? image,
      String? discription});
}

/// @nodoc
class _$SolarPlanetsCopyWithImpl<$Res, $Val extends SolarPlanets>
    implements $SolarPlanetsCopyWith<$Res> {
  _$SolarPlanetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? gravity = null,
    Object? avgTemp = null,
    Object? discoveredBy = null,
    Object? meanRadius = null,
    Object? isPlanet = null,
    Object? image = freezed,
    Object? discription = freezed,
  }) {
    return _then(_value.copyWith(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      gravity: null == gravity
          ? _value.gravity
          : gravity // ignore: cast_nullable_to_non_nullable
              as double,
      avgTemp: null == avgTemp
          ? _value.avgTemp
          : avgTemp // ignore: cast_nullable_to_non_nullable
              as double,
      discoveredBy: null == discoveredBy
          ? _value.discoveredBy
          : discoveredBy // ignore: cast_nullable_to_non_nullable
              as String,
      meanRadius: null == meanRadius
          ? _value.meanRadius
          : meanRadius // ignore: cast_nullable_to_non_nullable
              as double,
      isPlanet: null == isPlanet
          ? _value.isPlanet
          : isPlanet // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discription: freezed == discription
          ? _value.discription
          : discription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SolarPlanetsImplCopyWith<$Res>
    implements $SolarPlanetsCopyWith<$Res> {
  factory _$$SolarPlanetsImplCopyWith(
          _$SolarPlanetsImpl value, $Res Function(_$SolarPlanetsImpl) then) =
      __$$SolarPlanetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String englishName,
      double gravity,
      double avgTemp,
      String discoveredBy,
      double meanRadius,
      bool isPlanet,
      String? image,
      String? discription});
}

/// @nodoc
class __$$SolarPlanetsImplCopyWithImpl<$Res>
    extends _$SolarPlanetsCopyWithImpl<$Res, _$SolarPlanetsImpl>
    implements _$$SolarPlanetsImplCopyWith<$Res> {
  __$$SolarPlanetsImplCopyWithImpl(
      _$SolarPlanetsImpl _value, $Res Function(_$SolarPlanetsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? englishName = null,
    Object? gravity = null,
    Object? avgTemp = null,
    Object? discoveredBy = null,
    Object? meanRadius = null,
    Object? isPlanet = null,
    Object? image = freezed,
    Object? discription = freezed,
  }) {
    return _then(_$SolarPlanetsImpl(
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      gravity: null == gravity
          ? _value.gravity
          : gravity // ignore: cast_nullable_to_non_nullable
              as double,
      avgTemp: null == avgTemp
          ? _value.avgTemp
          : avgTemp // ignore: cast_nullable_to_non_nullable
              as double,
      discoveredBy: null == discoveredBy
          ? _value.discoveredBy
          : discoveredBy // ignore: cast_nullable_to_non_nullable
              as String,
      meanRadius: null == meanRadius
          ? _value.meanRadius
          : meanRadius // ignore: cast_nullable_to_non_nullable
              as double,
      isPlanet: null == isPlanet
          ? _value.isPlanet
          : isPlanet // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      discription: freezed == discription
          ? _value.discription
          : discription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SolarPlanetsImpl implements _SolarPlanets {
  _$SolarPlanetsImpl(
      {required this.englishName,
      required this.gravity,
      required this.avgTemp,
      required this.discoveredBy,
      required this.meanRadius,
      required this.isPlanet,
      this.image,
      this.discription});

  factory _$SolarPlanetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SolarPlanetsImplFromJson(json);

  @override
  final String englishName;
  @override
  final double gravity;
  @override
  final double avgTemp;
  @override
  final String discoveredBy;
  @override
  final double meanRadius;
  @override
  final bool isPlanet;
  @override
  final String? image;
  @override
  final String? discription;

  @override
  String toString() {
    return 'SolarPlanets(englishName: $englishName, gravity: $gravity, avgTemp: $avgTemp, discoveredBy: $discoveredBy, meanRadius: $meanRadius, isPlanet: $isPlanet, image: $image, discription: $discription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SolarPlanetsImpl &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.gravity, gravity) || other.gravity == gravity) &&
            (identical(other.avgTemp, avgTemp) || other.avgTemp == avgTemp) &&
            (identical(other.discoveredBy, discoveredBy) ||
                other.discoveredBy == discoveredBy) &&
            (identical(other.meanRadius, meanRadius) ||
                other.meanRadius == meanRadius) &&
            (identical(other.isPlanet, isPlanet) ||
                other.isPlanet == isPlanet) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.discription, discription) ||
                other.discription == discription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, englishName, gravity, avgTemp,
      discoveredBy, meanRadius, isPlanet, image, discription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SolarPlanetsImplCopyWith<_$SolarPlanetsImpl> get copyWith =>
      __$$SolarPlanetsImplCopyWithImpl<_$SolarPlanetsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SolarPlanetsImplToJson(
      this,
    );
  }
}

abstract class _SolarPlanets implements SolarPlanets {
  factory _SolarPlanets(
      {required final String englishName,
      required final double gravity,
      required final double avgTemp,
      required final String discoveredBy,
      required final double meanRadius,
      required final bool isPlanet,
      final String? image,
      final String? discription}) = _$SolarPlanetsImpl;

  factory _SolarPlanets.fromJson(Map<String, dynamic> json) =
      _$SolarPlanetsImpl.fromJson;

  @override
  String get englishName;
  @override
  double get gravity;
  @override
  double get avgTemp;
  @override
  String get discoveredBy;
  @override
  double get meanRadius;
  @override
  bool get isPlanet;
  @override
  String? get image;
  @override
  String? get discription;
  @override
  @JsonKey(ignore: true)
  _$$SolarPlanetsImplCopyWith<_$SolarPlanetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
