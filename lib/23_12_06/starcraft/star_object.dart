class StarObject {
  String _name;
  int _hp;

  StarObject({
    required String name,
    required int hp,
  })  : _name = name,
        _hp = hp;


  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get hp => _hp;

  set hp(int value) {
    _hp = value;
  }

  @override
  String toString() {
    return 'StarObject{name: $_name, _hp: $_hp}';
  }
}
