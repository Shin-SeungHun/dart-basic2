class Cleric {
  String name;
  int hp = 50;
  final int maxHp = 50;

  int mp = 10;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
      print('$name는 hp를 최대로 회복했다.');
    } else {
      print('$name은 hp 회복에 실패했다.');
    }
  }
}
