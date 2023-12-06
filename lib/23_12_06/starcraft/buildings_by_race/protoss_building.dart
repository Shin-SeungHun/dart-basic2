import '../building_unit/building.dart';
import '../race/protoss.dart';

class ProtossBuilding extends Protoss implements Building {
  ProtossBuilding({
    required super.name,
    required super.hp,
    required super.shield,
  });

  @override
  void constructBuilding() {
    // TODO: implement constructBuilding
  }

  @override
  void destroyBuilding() {
    // TODO: implement destroyBuilding
  }
}
