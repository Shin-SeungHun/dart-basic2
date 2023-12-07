class Book {
  String _title;
  DateTime _publishDate = DateTime.now();
  String _comment;

  Book({
    required String title,
    required DateTime publishDate,
    required String comment,
  })  : _title = title,
        _publishDate = publishDate,
        _comment = comment;

  String get comment => _comment;

  set comment(String value) {
    _comment = value;
  }

  DateTime get publishDate => _publishDate;

  set publishDate(DateTime value) {
    _publishDate = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }



  @override
  String toString() {
    return 'Book{ 제목: $_title, 출간일: $_publishDate, 한줄평: $_comment }';
  }
}
