import 'dart:math';

///  성직자는 이름, hp, mp, 최대 hp, 최대 mp를 가지고 있다.
///  hp와 최대 hp는 초기치 50,
///  mp와 최대 mp는 정수로 초기치 10으로 한다
///  최대 hp와 최대 mp는 상수 필드로 선언한다.
class Cleric {
  /// 모든 성직자의 최대 hp, mp는 50, 10으로 정해져 있어
  /// 각 인스턴스가 각각의 정보를 가지는 것은 메모리 낭비이다.
  /// 따라서 최대 hp, mp가 각 인스턴스 별로 있지 않도록 static 키워드 추가
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int hp = 50;
  int mp = 10;

  Cleric(
    this.name, {
    this.hp = maxHp,
    this.mp = maxMp,
  });

  ///   성직자는 셀프 에이드라는 마법을 사용할 수 있고 mp를 5소비하면 자신의 hp를 최대hp까지 회복할 수 있다.
  ///   selfAid() 인수 x, 리턴 x
  void selfAid() {
    print('$name는 셀프 에이드를 사용했다.');
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
      print('$name는 mp를 5만큼 사용해 hp를 최대로 회복했다.\n');
    } else {
      print('$name는 mp의 부족으로 셀프 에이드 사용에 실패했다.\n');
    }
    statusMessage();
  }

  ///   성직자는 기도하기라는 행동을 취할 수 있고 자신의 mp를 회복한다
  ///   회복량은 기도한 시간에 랜덤하게 0~2포인트 보정을 한 양이다
  ///   3초 기도하면 회복량은 3~5포인트 최대 mp보다 더 회복하는 것은 불가능
  ///   pray(int time) 인수에 기도할 시간을 지정할 수 있다. 리턴값은 실제로 회복된 mp 양을 반환한다
  int pray(int time) {
    int mpRecovery = maxMp - mp; // 현재 mp에서 회복 가능한 양
    int sumMp = 0; // 기도시간 + mp 회복량의 합을 저장핣 변수

    // 랜덤 mp 회복량 0~2포인트, addMp < 3
    int addMp = Random().nextInt(3);

    print('$name는 기도하기를 사용했다.');

    if (time == 0) {
      sumMp = 0;
      addMp = 0;

      print('$name의 기도가 실패했다.');
    } else {
      // 총 회복량
      // 기도 시간과 mp 회복량의 합과 현재 mp의 최대 회복 가능한 양 중 작은 값을 선택
      sumMp = min(time + addMp, mpRecovery);

      // mp를 업데이트
      mp += sumMp;
    }

    print('$name - 기도시간 : $time, mp 회복량 : $addMp, 총 mp 회복량 : $sumMp\n');
    statusMessage();
    return sumMp; // 총 회복량 반환
  }

  void statusMessage() {
    print('상태 메시지');
    print('이름 : $name, hp : $hp, mp : $mp\n');
  }
}
