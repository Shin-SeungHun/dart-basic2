import 'package:basic/12_04/wand.dart';
import 'package:basic/12_04/wizard.dart';

void main() {
  final Wand wand = Wand(name: '딱총나무 지팡이', power: 10);
  // wand.name = 'dd'; error
  // wand.power = 0.3; error

  final Wizard wizard = Wizard(name: '해리포터', hp: -10, mp: 1, wand: wand);

  print(wizard.toString());

  wizard.name = '간달프';
  wizard.hp = 10;
  wizard.mp = 75;

  final Wand newWand = Wand(name: '말총나무 지팡이', power: 95.0);

  wizard.wand = newWand;

  print(wizard.toString());
}
