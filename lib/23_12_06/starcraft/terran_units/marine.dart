import '../bionic_mechanic/biology.dart';
import '../units_by_race/terran_unit.dart';

class Marine extends TerranUnit implements Bionic {
  Marine({
    required super.name,
    required super.hp,
  });

  @override
  void healing() {

  }
}
