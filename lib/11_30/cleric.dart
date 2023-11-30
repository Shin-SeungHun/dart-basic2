import 'dart:math';

///  성직자는 이름, hp, mp, 최대 hp, 최대 mp를 가지고 있다.
///  hp와 최대 hp는 초기치 50,
///  mp와 최대 mp는 정수로 초기치 10으로 한다
///  최대 hp와 최대 mp는 상수 필드로 선언한다.
class Cleric {
  String name;
  int hp;
  int mp;

  final int maxHp = 50;
  final int maxMp = 10;

  Cleric(this.name, this.hp, this.mp);

  ///   성직자는 셀프 에이드라는 마법을 사용할 수 있고 mp를 5소비하면 자신의 hp를 최대hp까지 회복할 수 있다.
  ///   selfAid() 인수 x, 리턴 x
  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
      print('$name는 mp를 5만큼 사용해 hp를 최대로 회복했다.');
      print('현재 mp : $mp\n');
    } else {
      print('$name는 mp의 부족으로 hp 회복에 실패했다.');
    }
  }

  ///   성직자는 기도하기라는 행동을 취할 수 있고 자신의 mp를 회복한다
  ///   회복량은 기도한 시간에 랜덤하게 0~2포인트 보정을 한 양이다
  ///   3초 기도하면 회복량은 3~5포인트 최대 mp보다 더 회복하는 것은 불가능
  ///   pray(int time) 인수에 기도할 시간을 지정할 수 있다. 리턴값은 실제로 회복된 mp 양을 반환한다
  int pray(int time) {

    int maxRecovery = maxMp - mp; // 현재 mp에서 회복 가능한 양

    // 랜덤 mp 회복량 0~2포인트, addMp < 3
    int addMp = Random().nextInt(3);

    // 총 회복량
    // 기도 시간과 mp 회복량의 합과 현재 mp의 최대 회복 가능한 양 중 작은 값을 선택
    int sumMp = min(time + addMp, maxRecovery);

    // mp를 업데이트
    mp = mp + sumMp;

    print(
        '$name - 기도시간 : $time, mp 회복량 : $addMp, 총 mp 회복량 : $sumMp, 현재 mp : $mp');

    return sumMp; // 총 회복량 반환
  }
}
