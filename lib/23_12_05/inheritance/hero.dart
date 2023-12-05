import 'dart:math';

import 'slime.dart';
import 'sword.dart';

class Hero {
  // 공통의 돈
  static int money = 100;

  // static void moneyRandom() {
  //   Hero.money = Random().nextInt(1000);
  // }

  String name;
  int _hp;
  Sword sword;

  Hero({
    required this.name,
    required this.sword,
    required int hp,
  }) : _hp = hp;

  // getter
  // 프로퍼티
  int get hp => _hp;

  set hp(int value) {
    if (value < 0) {
      throw Exception('hp는 0보다 작을 수 없다');
    }

    _hp = value;
  }

  // Java 스타일의 getter/ setter
  //
  // void setName(String name) {
  //   _name = name;
  // }
  //
  // String getName() {
  //   return _name;
  // }

  // 메서드 : 클래스내에서 클래스를 위한 동작을 하는 함수
  // 함수 : 클래스랑 상관 없이 독자적으로 실행되는 함수
  void attack(Slime slime) {
    slime.hp -= 10;
    print('10의 데미지!');
  }

  void run() {
    print('$name가 뛰었다');
  }

  @override
  String toString() {
    return 'Hero{name: $name, _hp: $_hp, sword: $sword}';
  }
}
