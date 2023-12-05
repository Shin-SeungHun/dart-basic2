import 'asset.dart';

/// 회사에서 형태가 없는 무형자산(IntangibleAsset)도 관리하려고 생각하고 있다.
/// 무형자산에는, 예를 들어 특허권(Patent)등이 있다.
/// 무형자산은 자산(Asset)의 일종이다.
abstract class IntangibleAsset extends Asset {
  List<IntangibleAsset> intangibleAssetList = [];

  IntangibleAsset({required super.assetList});

  void intangibleAssetAdd() {
    print('무형 자산 추가');
    intangibleAssetList.add(this);
  }

  void intangibleAsset() {
    print('무형 자산 목록');
    for (IntangibleAsset intangibleAsset in intangibleAssetList) {
      print(intangibleAsset);
    }
  }

  @override
  void assetAdd() {
    super.assetList.add(this);
  }

  @override
  void asset() {
    for (Asset asset in super.assetList) {
      print(asset);
    }
  }

  @override
  String toString() {
    return 'IntangibleAsset{intangibleAssetList: $intangibleAssetList}';
  }
}
