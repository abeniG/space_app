// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanetsImpl _$$PlanetsImplFromJson(Map<String, dynamic> json) =>
    _$PlanetsImpl(
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
      distance: json['distance'] as String,
      lightSpeed: json['lightSpeed'] as String,
      yearInDays: json['yearInDays'] as String,
    );

Map<String, dynamic> _$$PlanetsImplToJson(_$PlanetsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'distance': instance.distance,
      'lightSpeed': instance.lightSpeed,
      'yearInDays': instance.yearInDays,
    };
