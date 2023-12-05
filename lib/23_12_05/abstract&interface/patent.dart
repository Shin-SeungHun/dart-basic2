import 'intangible_asset.dart';

class Patent extends IntangibleAsset {
  String name;
  int price;

  Patent({
    required this.name,
    required this.price,
  });

  @override
  String toString() {
    return 'Patent{name: $name, price: $price}';
  }
}
