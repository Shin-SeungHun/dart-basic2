import 'hero.dart';
import 'poison_slime.dart';
import 'slime.dart';

void main() {
  Hero.moneyRandom();
  // print(Hero.money);

  final hero = Hero(name: '용사', hp: 100);
  hero.name = 'aa';
  // print(hero.hp);

  // final Slime slime = Slime('suffix');

  final PoisonSlime poisonSlime = PoisonSlime('suffix');
  poisonSlime.attack(hero);
  // print('${hero.name}는 ${poisonSlime.posionDamage}의 피해를 입었다!');

  // print(poisonSlime.poisonAttackCnt);


}