import '../biology_mechanic/mechanic.dart';
import '../units_by_race/terran_unit.dart';

class Tank extends TerranUnit implements Mechanic {
  Tank({
    required super.name,
    required super.hp,
  });

  @override
  void repair() {
    // TODO: implement repair
  }
}
