import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand wand,
  })  : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand;

  @override
  String toString() {
    return '마법사 {name: $_name, hp: $_hp, mp: $_mp, wand: $_wand}';
  }
}
