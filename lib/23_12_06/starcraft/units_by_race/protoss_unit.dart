import '../building_unit/unit.dart';
import '../race/protoss.dart';

class ProtossUnit extends Protoss implements Unit {
  ProtossUnit({
    required super.name,
    required super.hp,
    required super.shield,
  });

  @override
  void unitBirth() {
    // TODO: implement unitBirth
  }

  @override
  void unitDeath() {
    // TODO: implement unitDeath
  }
}
