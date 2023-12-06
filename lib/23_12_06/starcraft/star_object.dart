class StarObject{
  String name;
  int _hp;

  StarObject({
    required this.name,
    required int hp,
  }) : _hp = hp;

  int get hp => _hp;

  set hp(int value) {
    _hp = value;
  }

  @override
  String toString() {
    return 'StarObject{name: $name, _hp: $_hp}';
  }
}