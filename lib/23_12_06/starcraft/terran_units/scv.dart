import '../biology_mechanic/mechanic.dart';
import '../units_by_race/terran_unit.dart';

class Scv extends TerranUnit implements Mechanic {
  Scv({required super.name, required super.hp});

  @override
  void repair() {

  }

  void getResource() {}
}
