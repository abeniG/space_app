import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:space_app/models/eventModel.dart';

class NasaEventsApiService {
  Future<List<Event>> fetchEvents() async {
    final response = await http.get(Uri.parse('https://eonet.gsfc.nasa.gov/api/v2.1/events?limit=20'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final eventsData = jsonData['events'] as List<dynamic>;
      return eventsData.map((eventJson) => Event.fromJson(eventJson)).toList();
    } else {
      throw Exception('Failed to load events');
    }
  }
}
