/// 자산
abstract class Asset {
  List<Asset> assetList = [];

  Asset({required this.assetList});

  void assetAdd() {
    print('자산 추가');
    assetList.add(this);
  }

  void asset() {
    print('자산 목록');
    for (Asset asset in assetList) {
      print(asset);
    }
  }

  @override
  String toString() {
    return 'Asset{assetLists: $assetList}';
  }
}
