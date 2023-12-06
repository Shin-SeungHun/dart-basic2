import '../star_object.dart';

class Protoss extends StarObject {
  int _shield;

  Protoss({
    required int shield,
    required super.name,
    required super.hp,
  }) : _shield = shield;

  void regenShield() {}


  int get shield => _shield;

  set shield(int value) {
    _shield = value;
  }

  @override
  String toString() {
    return 'Protoss{_shield: $_shield}';
  }
}
