/**
 * 성직자는 이름, hp, mp, 최대 hp, 최대 mp를 가지고 있다.
 * hp와 최대 hp는 초기치 50,
 * mp와 최대 mp는 정수로 초기치 10으로 한다
 * 최대 hp와 최대 mp는 상수 필드로 선언한다.
 *
 * 성직자는 셀프 에이드라는 마법을 사용할 수 있고 mp를 5소비하면 자신의 hp를 최대hp까지 회복할 수 있다.
 * selfAid() 인수 x, 리턴 x
 */

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;

  final int maxHp = 50;
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
