import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:space_app/models/event.dart';
import 'package:space_app/models/solar_planets/solar_planets.dart';

class ApiService {
  Future<List<Event>> fetchEvents() async {
    final response = await http
        .get(Uri.parse('https://eonet.gsfc.nasa.gov/api/v2.1/events?limit=20'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final eventsData = jsonData['events'] as List<dynamic>;
      return eventsData.map((eventJson) => Event.fromJson(eventJson)).toList();
    } else {
      throw Exception('Failed to load events');
    }
  }

  Future<List<String>> fetchImages() async {
    final response = await http.get(Uri.parse(
        'https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&count=100'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      List<String> jpegImages = [];

      for (var image in data) {
        if (image['url'] != null &&
            (image['url'].endsWith('.jpg') || image['url'].endsWith('.jpeg'))) {
          jpegImages.add(image['url']);
        }
      }
      return jpegImages;
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<SolarPlanets>> fetchPlanetsInfo() async {
    const String url = 'https://api.le-systeme-solaire.net/rest/bodies';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['bodies'] as List<dynamic>;
      final planets = data
          .where((body) => body['isPlanet'] == true)
          .map((body) => SolarPlanets.fromJson(body))
          .toList();
      return planets;
    } else {
      throw Exception('No data');
    }
  }
}
