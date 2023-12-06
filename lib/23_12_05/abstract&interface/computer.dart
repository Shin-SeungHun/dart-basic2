import 'tangible_asset.dart';

/// 컴퓨터
/// 유형자산(TangibleAsset)이라는 이름의 추상클래스를 작성하고 Computer나 Book은 그 부모 클래스를 활용한 형태로 수정한다.
class Computer extends TangibleAsset {
  String _makerName;

  @override
  double _weight;

  Computer({
    required String makerName,
    required double weight,
    required super.color,
    required super.name,
    required super.price,
  })  : _makerName = makerName,
        _weight = weight,
        super(weight: 0.0);

  double get weight => _weight;

  set weight(double value) {
    _weight = value;
  }

  String get makerName => _makerName;

  set makerName(String value) {
    _makerName = value;
  }

  @override
  String toString() {
    return 'Computer{_makerName: $_makerName, _weight: $_weight}';
  }
}
