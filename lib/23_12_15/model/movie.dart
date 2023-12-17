class Movie {
  final int id;
  final String title;
  final String originalTitle;
  final String posterPath;
  final String overview;
  final String releaseDate;
  final double voteAverage;

  Movie({
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      originalTitle: json['original_title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      voteAverage: json['vote_average'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'originalTitle': originalTitle,
      'posterPath': posterPath,
      'overview': overview,
      'releaseDate': releaseDate,
      'voteAverage': voteAverage,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> json) {
    return Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      originalTitle: json['originalTitle'] as String,
      posterPath: json['posterPath'] as String,
      overview: json['overview'] as String,
      releaseDate: json['releaseDate'] as String,
      voteAverage: json['voteAverage'] as double,
    );
  }

  @override
  String toString() {
    return 'Movie{id: $id, title: $title, originalTitle: $originalTitle, posterPath: $posterPath, overview: $overview, releaseDate: $releaseDate, voteAverage: $voteAverage}';
  }
}




