import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:real_rover/features/models/movie.dart';


class MovieApi {
  final String baseUrl = 'https://api.themoviedb.org/3';
  final String apiKey = '7955b9678a73713d05bb7ca57a6ab56e';

  Future<List<Movie>> fetchMovies() async {
    final response = await http.get(Uri.parse('$baseUrl/discover/movie?api_key=$apiKey'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['results'];
      return jsonResponse.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception(response.body);
    }
  }
}

//https://api.themoviedb.org/3/discover/movie?api_key=7955b9678a73713d05bb7ca57a6ab56e
