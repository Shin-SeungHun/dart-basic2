import '../building_unit/building.dart';
import '../race/zerg.dart';

class ZergBuilding extends Zerg implements Building {
  ZergBuilding({
    required super.name,
    required super.hp,
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
