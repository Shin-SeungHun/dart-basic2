import '../building_unit/building.dart';
import '../race/terran.dart';

class TerranBuilding extends Terran implements Building {
  TerranBuilding({required super.name, required super.hp});

  @override
  void constructBuilding() {
    // TODO: implement constructBuilding
  }

  @override
  void destroyBuilding() {
    // TODO: implement destroyBuilding
  }
}
