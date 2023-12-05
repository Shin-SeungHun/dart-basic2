import 'hero.dart';
import 'slime.dart';

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix);

  int poisonAttackCnt = 5; // 독 공격이 가능한 남은 횟수 초기값 5

  @override
  void attack(Hero hero) {
    if (poisonAttackCnt > 0) {
      print('슬라임 $suffix이/가 추가로 독 포자를 살포했다!');
      int posionDamage = (hero.hp / 5).round();
      hero.hp -= posionDamage;
      print('$posionDamage 포인트의 데미지');
      poisonAttackCnt--; // 독 공격 횟수 감소
    } else {}

    super.attack(hero);
  }
}
