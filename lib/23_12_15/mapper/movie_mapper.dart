import 'package:basic/23_12_15/dto/movie_result.dart';

import '../dto/movie_data.dart';
import '../model/movie.dart';

extension ToMovie on MovieResult {
  Movie toMovie() {
    return Movie(
      id: id,
      originalTitle: originalTitle,
      overview: overview,
      posterPath: posterPath,
      releaseDate: releaseDate,
      title: title,
      voteAverage: voteAverage,
    );
  }
}
