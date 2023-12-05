import 'tangible_asset.dart';

/// 책
/// 유형자산(TangibleAsset)이라는 이름의 추상클래스를 작성하고 Computer나 Book은 그 부모 클래스를 활용한 형태로 수정한다.
class Book extends TangibleAsset {
  String name;
  int price;
  String color;
  String isbn;

  @override
  double weight;

  Book({
    required this.name,
    required this.price,
    required this.color,
    required this.isbn,
    required this.weight,
  });

  @override
  String toString() {
    return 'Book{name: $name, price: $price, color: $color, isbn: $isbn, weight: $weight}';
  }
}
