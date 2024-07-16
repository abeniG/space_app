import 'dart:convert';

import 'package:http/http.dart' as http;

class NasaGalleryApiService {
  static const url =
      'https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&count=100';

  Future<List<String>> fetchImages() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((image) => image['url'] as String).toList();
    } else {
      throw Exception('Failed to load');
    }
  }
}
