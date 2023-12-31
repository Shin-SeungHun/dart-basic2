import 'asset.dart';
import 'thing.dart';

/// 유형자산
/// 이후 컴퓨터와 책 이외에도 여러가지 자산을 관리하고 싶은 경우에 유용한 유형자산(TangibleAsset)이라는 이름의 추상클래스를 작성하고 Computer나 Book은 그 부모 클래스를 활용한 형태로 수정한다.
/// 유형자산은 자산(Asset)의 일종이다.
/// 유형자산(TangibleAsset)은, 자산(Asset)의 일종이며, 형태가 있는 것(Thing)의 일종이기도 하다.
/// 이 정의에 맞도록 TangibleAsset의 소스 코드를 수정한다.
/// 이 때, TangibleAsset에 필드나 메소드의 추가가 필요하다면 적당히 추가한다.
abstract class TangibleAsset extends Asset implements Thing {
  String _color;

  @override
  double weight;

  TangibleAsset({
    required String color,
    required this.weight,
    required super.name,
    required super.price,
  }) : _color = color;

  @override
  String toString() {
    return 'TangibleAsset{_color: $_color, _weight: $weight}';
  }
}
