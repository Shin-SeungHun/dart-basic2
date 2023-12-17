import 'dart:convert';
import '../dto/movie_data.dart';
import 'package:http/http.dart' as http;

class MovieApi {
  Future<MovieData> fetchMovies({required String upcoming}) async {
    final response = await http.get(Uri.parse(upcoming));
    if (response.statusCode == 200) {
      String jsonString = response.body;
      Map<String, dynamic> jsonData = jsonDecode(jsonString) as Map<String, dynamic>;
      MovieData movieData = MovieData.fromJson(jsonData);
      return movieData;
    } else {
      throw Exception('영화 로드 실패: ${response.statusCode}');
    }
  }
}
