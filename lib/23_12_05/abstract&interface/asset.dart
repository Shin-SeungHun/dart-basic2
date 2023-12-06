/// 자산
abstract class Asset {
  String _name;
  int _price;

  Asset({
    required String name,
    required int price,
  })  : _name = name,
        _price = price;

  int get price => _price;

  set price(int value) {
    _price = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  @override
  String toString() {
    return 'Asset{_name: $_name, _price: $_price}';
  }
}
