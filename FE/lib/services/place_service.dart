import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/place.dart';

class PlaceService {
  final String baseUrl = 'http://localhost:8080/api/places'; // Replace with your API URL

  Future<List<Place>> getAllPlaces() async {
    final response = await http.get(Uri.parse('$baseUrl'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Place.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load places');
    }
  }
}