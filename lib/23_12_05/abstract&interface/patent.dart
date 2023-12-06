import 'intangible_asset.dart';

/// 특허권
/// 형자산(IntangibleAsset)이라는 이름의 추상클래스를 작성하고 Patent은 그 부모 클래스를 활용한 형태로 수정한다.
class Patent extends IntangibleAsset {
  int _patentNum;

  Patent({
    required int patentNum,
    required super.name,
    required super.price,
  }) : _patentNum = patentNum;

  @override
  String toString() {
    return 'Patent{_patentNum: $_patentNum}';
  }
}
