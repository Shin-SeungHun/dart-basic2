import 'dart:convert';

import 'package:basic/23_12_15/data_source/movie_api.dart';
import 'package:basic/23_12_15/dto/movie_data.dart';
import 'package:basic/23_12_15/mapper/movie_mapper.dart';
import 'model/movie.dart';

void main() async {
  // api 통신
  final api = MovieApi();

  String url =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';

  // json을 dto로
  final MovieData dto = await api.fetchMovies(upcoming: url);
  // print(dto);
  // print(jsonEncode(dto.toJson()));
  // dto에서 필요한 내용을 mapper를 통해 모델 클래스로 변환
  final List<Movie> movies = dto.results.map((e) => e.toMovie()).toList();

  print(movies.toString());
}
