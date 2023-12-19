class Book {
  int _id;
  String _title;
  String _author;
  DateTime? _publicationDate;
  bool _isAvailable = true;

  Book({
    required int id,
    required String title,
    required String author,
    required DateTime? publicationDate,
  })  : _id = id,
        _title = title,
        _author = author,
        _publicationDate = publicationDate;

  bool get isAvailable => _isAvailable;

  set isAvailable(bool value) {
    _isAvailable = value;
  }

  DateTime? get publicationDate => _publicationDate;

  set publicationDate(DateTime? value) {
    _publicationDate = value;
  }

  String get author => _author;

  set author(String value) {
    _author = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  @override
  String toString() {
    return 'Book{id: $_id, title: $_title, author: $_author, publicationDate: $_publicationDate, isAvailable: $_isAvailable}';
  }
}
