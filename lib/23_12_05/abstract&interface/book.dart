import 'tangible_asset.dart';

/// 책
/// 유형자산(TangibleAsset)이라는 이름의 추상클래스를 작성하고 Computer나 Book은 그 부모 클래스를 활용한 형태로 수정한다.
class Book extends TangibleAsset {
  String _isbn;

  @override
  double _weight;

  Book({
    required String isbn,
    required double weight,
    required super.color,
    required super.name,
    required super.price,
  })  : _isbn = isbn,
        _weight = weight,
        super(weight: 0.0);

  double get weight => _weight;

  set weight(double value) {
    _weight = value;
  }

  String get isbn => _isbn;

  set isbn(String value) {
    _isbn = value;
  }

  @override
  String toString() {
    return 'Book{_isbn: $_isbn, _weight: $_weight}';
  }
}
