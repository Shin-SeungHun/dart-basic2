import 'a.dart';
import 'b.dart';
import 'x.dart';
import 'y.dart';

void main() {
  // 1. X obj = A(); 로 A인스턴스를 생성한 후 변수 obj에서 호출할 수 있는 메소드를 a(), b(), c() 중에 골라보시오
  final X obj = A();
  obj.a();

  //  2.
  // Y y1 = A();
  // Y y2 = B();로 A와 B의 인스턴스를 생성한 후 y1.a(); y2.a();를 실행했을 때 화면에 표시되는 내용은?
  final Y y1 = A();
  final Y y2 = B();

  y1.a(); // Aa
  y2.b(); // Bb

  // A클래스나 B클래스의 인스턴스를 각각 1개 생성하여 List에 차례로 담는다
  // 그 후에 List의 요소를 차례대로 꺼내 각각의 인스턴스의 b() 메소드를 호출해야 한다.
  final Y a = A();
  final Y b = B();

  //
  // 1. List 변수의 타입으로 무엇을 사용해야 하는지
  // 2. 위에서 설명하고 있는 프로그램 작성
  final List<Y> abList = [a, b];
  for (Y y in abList) {
    y.b();
  }
}
