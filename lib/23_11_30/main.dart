import 'cleric.dart';
import 'dart:math';

void main() {
  final Cleric cleric = Cleric('성직자', hp: 50, mp: 10);

  cleric.selfAid(); // 셀프 에이드

  final int time = Random().nextInt(5); // 기도시간 랜덤으로 생성 0~5
  cleric.pray(time); // 기도하기

  /// A. 이름, hp, mp를 지정하여 인스턴스화
  final Cleric a = Cleric('아서스', hp: 40, mp: 5);
  print('A \nname : ${a.name}, hp : ${a.hp}, mp : ${a.mp}\n');

  /// B. 이름과 hp만 지정하여 인스턴스화, mp는 최대mp와 같은 값으로 초기화
  final Cleric b = Cleric('아서스', hp: 35);
  print('B \nname : ${b.name}, hp : ${b.hp}, mp : ${b.mp}\n');

  /// C. 이름만 지정하여 인스턴스화, hp, mp는 최대 hp와 최대 mp로 초기화
  final Cleric c = Cleric('아서스');
  print('C \nname : ${c.name}, hp : ${c.hp}, mp : ${c.mp}\n');

  /// D. 이름을 지정하지 않는 경우에는 인스턴스화가 불가능함
  // final Cleric d = Cleric();
}
