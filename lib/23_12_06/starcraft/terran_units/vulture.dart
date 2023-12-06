import '../biology_mechanic/mechanic.dart';
import '../units_by_race/terran_unit.dart';

class Vulture extends TerranUnit implements Mechanic {
  Vulture({required super.name, required super.hp});

  @override
  void repair() {
    // TODO: implement repair
  }
}
