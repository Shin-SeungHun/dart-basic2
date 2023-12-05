/// 자산
abstract class Asset {
  List<Asset> _assetList = [];

  Asset({required List<Asset>assetList});

  List<Asset> get assetList => _assetList;

  set assetList(List<Asset> value) {
    _assetList = value;
  }

  void assetAdd() {
    print('자산 추가');
    _assetList.add(this);
  }

  void asset() {
    print('자산 목록');
    for (Asset asset in _assetList) {
      print(asset);
    }
  }

  @override
  String toString() {
    return 'Asset{assetLists: $_assetList}';
  }
}
