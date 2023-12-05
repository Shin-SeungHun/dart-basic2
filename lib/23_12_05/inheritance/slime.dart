import 'hero.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('$suffix 슬라임의 공격!');
    int damage = (hero.hp / 10).round(); // double 값을 int로 반올림
    hero.hp -= damage;
    print('$damage포인트의 데미지!\n');
  }
}
