import 'cleric.dart';
import 'dart:math';

void main() {
  Cleric cleric = Cleric('성직자', 50, 10);

  cleric.selfAid(); // 셀프 에이드

  int time = Random().nextInt(5) + 1; // 기도시간 랜덤으로 생성 1~5
  cleric.pray(time); // 기도하기
}
