import 'package:freezed_annotation/freezed_annotation.dart';

part 'solar_planets.freezed.dart';
part 'solar_planets.g.dart';

@freezed
class SolarPlanets with _$SolarPlanets {
  factory SolarPlanets({
    required String englishName,
    required double gravity,
    required double avgTemp,
    required String discoveredBy,
    required double meanRadius,
    required bool isPlanet,
  }) = _SolarPlanets;

  factory SolarPlanets.fromJson(Map<String, dynamic> json) =>
      _$SolarPlanetsFromJson(json);
}
