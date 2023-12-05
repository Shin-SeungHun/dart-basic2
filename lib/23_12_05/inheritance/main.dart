import 'hero.dart';
import 'poison_slime.dart';
import 'slime.dart';
import 'sword.dart';

void main() {
  // Hero.moneyRandom();
  // print(Hero.money);

  final sword = Sword(name: '참철검', damage: 10);

  final hero = Hero(name: '용사', hp: 100, sword: sword);

  // print(hero.toString());

  final Slime slime = Slime(suffix: '대형');
  slime.attack(hero);

  final PoisonSlime poisonSlime = PoisonSlime(suffix: '포이즌');
  poisonSlime.attack(hero);

  // print(poisonSlime.poisonAttackCnt);
}
