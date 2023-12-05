import 'tangible_asset.dart';

class Book extends TangibleAsset {
  String name;
  int price;
  String color;
  String isbn;

  Book({
    required this.name,
    required this.price,
    required this.color,
    required this.isbn,
  });

  @override
  String toString() {
    return 'Book{name: $name, price: $price, color: $color, isbn: $isbn}';
  }
}
