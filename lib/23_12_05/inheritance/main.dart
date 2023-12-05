import 'hero.dart';
import 'poison_slime.dart';
import 'sword.dart';

void main() {
  // Hero.moneyRandom();
  // print(Hero.money);

  final sword = Sword(name: '참철검', damage: 10);

  final hero = Hero(name: '용사', hp: 100, sword: sword);
  // print(hero.name);
  // print(hero.hp);
  // print(hero.sword);

  // final Slime slime = Slime('대형');

  final PoisonSlime poisonSlime = PoisonSlime('포이즌');
  poisonSlime.attack(hero);

  // print(poisonSlime.poisonAttackCnt);
}
