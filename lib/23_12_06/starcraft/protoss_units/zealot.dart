import 'package:basic/23_12_06/starcraft/biology_mechanic/biology.dart';
import '../units_by_race/protoss_unit.dart';

class Zealot extends ProtossUnit implements Biology {
  Zealot({required super.name, required super.hp});

  @override
  void healing() {
    // TODO: implement healing
  }
}
