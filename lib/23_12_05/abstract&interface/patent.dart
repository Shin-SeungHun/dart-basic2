import 'intangible_asset.dart';

/// 특허권
/// 형자산(IntangibleAsset)이라는 이름의 추상클래스를 작성하고 Patent은 그 부모 클래스를 활용한 형태로 수정한다.
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