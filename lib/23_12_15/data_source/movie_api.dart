import 'dart:convert';
import '../dto/movie_data.dart';
import 'package:http/http.dart' as http;

class MovieApi {
  Future<MovieData> fetchMovies({required String upcoming}) async {
    final response = await http.get(Uri.parse(upcoming));

    Map<String, dynamic> jsonData = jsonDecode(utf8.decode(response.bodyBytes));
    MovieData movieData = MovieData.fromJson(jsonData);
    return movieData;
  }
}
