import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'planets.freezed.dart';
part 'planets.g.dart';

@freezed
class Planets with _$Planets {
  const factory Planets(
      {required String name,
      required String imageUrl,
      required String description,
      required String distance,
      required String lightSpeed,
      required String yearInDays}) = _Planets;
  factory Planets.fromJson(Map<String, Object?> json) =>
      _$PlanetsFromJson(json);
}
