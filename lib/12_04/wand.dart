class Wand {
  String _name; // 이름
  double _power; // 마력

  Wand({
    required String name,
    required double power,
  })  : _name = name,
        _power = power;

  @override
  String toString() {
    return '지팡이 {name: $_name, power: $_power}';
  }
}
