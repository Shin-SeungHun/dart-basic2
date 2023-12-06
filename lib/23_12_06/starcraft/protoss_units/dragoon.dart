import '../biology_mechanic/mechanic.dart';
import '../units_by_race/protoss_unit.dart';

class Dragoon extends ProtossUnit implements Mechanic {
  Dragoon({required super.name, required super.hp});

  @override
  void repair() {
    // TODO: implement repair
  }
}
