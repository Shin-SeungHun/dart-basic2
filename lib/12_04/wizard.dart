import 'wand.dart';

class Wizard {
  late String _name;
  late int _hp;
  late int _mp;
  late Wand _wand;

  Wizard({
    required String name,
    required int hp,
    required int mp,
    required Wand wand,
  }) {
    // 마법사의 이름은 null일 수 없고 반드시 3글자 이상이어햐 한다.
    if (name.length < 3) {
      throw Exception('$_name의 이름은 null일 수 없고 반드시 3글자 이상이어햐 한다.');
    } else {
      _name = name;
    }

    // hp가 음수가 되는 상황에서는 대신 0을 설정되도록 한다.
    if (hp < 0) {
      _hp = 0;
    } else {
      _hp = hp;
    }

    // 마법사의 mp는 0 이상이어야 한다.
    if (mp < 0) {
      throw Exception('$_name의 mp는 0 이상이어야 한다.');
    } else {
      _mp = mp;
    }

    // 마법사의 지팡이는 null일 수 없다.
    if (wand == null) {
      throw Exception('$_name의 $_wand는 null일 수 없다.');
    } else {
      _wand = wand;
    }
  }

  String get name => _name;

  /// 마법사의 이름은 null일 수 없고 반드시 3글자 이상이어햐 한다.
  set name(String value) {
    if (value.length >= 3) {
      _name = value;
    } else {
      throw Exception('$_name의 이름은 null일 수 없고 반드시 3글자 이상이어햐 한다.');
    }
  }

  int get hp => _hp;

  /// hp가 음수가 되는 상황에서는 대신 0을 설정되도록 한다.
  set hp(int value) {
    if (value < 0) {
      value = 0;
      _hp = value;
    } else {
      _hp = value;
    }
  }

  int get mp => _mp;

  /// 마법사의 mp는 0 이상이어야 한다.
  set mp(int value) {
    if (value >= 0) {
      _mp = value;
    } else {
      throw Exception('$_name의 mp는 0 이상이어야 한다.');
    }
  }

  Wand get wand => _wand;

  /// 마법사의 지팡이는 null일 수 없다.
  set wand(Wand value) {
    if (value != null) {
      _wand = value;
    } else {
      throw Exception('$_name의 $_wand는 null일 수 없다.');
    }
  }

  @override
  String toString() {
    return '마법사 {name: $_name, hp: $_hp, mp: $_mp, wand: $_wand}';
  }
}
