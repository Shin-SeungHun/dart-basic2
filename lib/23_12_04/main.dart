import 'person.dart';
import 'wand.dart';
import 'wizard.dart';

// 연습문제 2-1
// 1. 대한민국의 도시 이름 모음 (순서 상관 없음)
//     - list
// 2. 10명 학생의 시험 점수
//     - map
// 3. 대한민국의 도시별 인구수 (순서 상관 없음)
//     - map

void main() {
  final Wand wand = Wand(name: '딱총나무 지팡이', power: 100);
  // wand.name = 'dd'; error
  // wand.power = 0.3; error
  // wand.power = 101; error

  final Wizard wizard = Wizard(name: '해리포터', hp: 10, mp: 1, wand: wand);

  print(wizard.toString());

  wizard.name = '간달프';
  wizard.hp = 10;
  wizard.mp = 75;

  final Wand newWand = Wand(name: '말총나무 지팡이', power: 95.0);

  wizard.wand = newWand;

  print(wizard.toString());

  final List<Person> personList = [];

  final Person hong = Person(name: '홍길동', age: 20);
  final Person han = Person(name: '한석봉', age: 25);

  personList.add(hong);
  personList.add(han);

  /// list에 담긴 모든 person 인스턴스의 이름을 표시
  for (Person ps in personList) {
    print(ps.name);
  }

  final Map<String, int> personMap = {};
  for (Person ps in personList) {
    personMap[ps.name] = ps.age;
  }

  // Map에 저장한 값을 출력
  personMap.forEach((String name, int age) {
    print('$name의 나이는 $age살');
  });
}
