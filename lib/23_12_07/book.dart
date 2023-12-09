import 'package:intl/intl.dart';

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

  /// ==
  /// title과 publishDate만 비교
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          _title == other._title &&
          DateFormat('yyyy-MM--dd').format(_publishDate) ==
              DateFormat('yyyy-MM-dd').format(other._publishDate);

  @override
  int get hashCode =>
      _title.hashCode ^ DateFormat('yyyy-MM-dd').format(_publishDate).hashCode;

  /// 깊은 복사
  Book copyWith({
    String? title,
    DateTime? publishDate,
    String? comment,
  }) {
    return Book(
      title: title ?? _title,
      publishDate: publishDate ?? _publishDate,
      comment: comment ?? _comment,
    );
  }

  @override
  String toString() {
    return 'Book{ 제목: $_title, 출간일: $_publishDate, 한줄평: $_comment }';
  }
}
