import '../bionic_mechanic/mechanic.dart';
import '../units_by_race/terran_unit.dart';

class Scv extends TerranUnit implements Mechanic {
  Scv({
    required super.name,
    required super.hp,
  });

  void getResource() {}

  @override
  void repair() {
    // TODO: implement repair
  }
}
