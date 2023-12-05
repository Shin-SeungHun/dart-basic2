import 'tangible_asset.dart';

/// 컴퓨터
/// 유형자산(TangibleAsset)이라는 이름의 추상클래스를 작성하고 Computer나 Book은 그 부모 클래스를 활용한 형태로 수정한다.
class Computer extends TangibleAsset {
  String name;
  int price;
  String color;
  String makerName;

  @override
  double weight;

  Computer({
    required this.name,
    required this.price,
    required this.color,
    required this.makerName,
    required this.weight,
  });

  @override
  String toString() {
    return 'Computer{name: $name, price: $price, color: $color, makerName: $makerName, weight: $weight}';
  }
}
