// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solar_planets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SolarPlanetsImpl _$$SolarPlanetsImplFromJson(Map<String, dynamic> json) =>
    _$SolarPlanetsImpl(
      englishName: json['englishName'] as String,
      gravity: (json['gravity'] as num).toDouble(),
      avgTemp: (json['avgTemp'] as num).toDouble(),
      discoveredBy: json['discoveredBy'] as String,
      meanRadius: (json['meanRadius'] as num).toDouble(),
      isPlanet: json['isPlanet'] as bool,
      image: json['image'] as String?,
      discription: json['discription'] as String?,
    );

Map<String, dynamic> _$$SolarPlanetsImplToJson(_$SolarPlanetsImpl instance) =>
    <String, dynamic>{
      'englishName': instance.englishName,
      'gravity': instance.gravity,
      'avgTemp': instance.avgTemp,
      'discoveredBy': instance.discoveredBy,
      'meanRadius': instance.meanRadius,
      'isPlanet': instance.isPlanet,
      'image': instance.image,
      'discription': instance.discription,
    };
