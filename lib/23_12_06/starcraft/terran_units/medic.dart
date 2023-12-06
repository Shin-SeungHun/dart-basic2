import '../biology_mechanic/biology.dart';
import '../units_by_race/terran_unit.dart';

class Medic extends TerranUnit implements Biology {
  Medic({required super.name, required super.hp});

  @override
  void healing() {
    // TODO: implement healing
  }
}
