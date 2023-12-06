import '../bionic_mechanic/biology.dart';
import '../star_object.dart';

class Zerg extends StarObject implements Bionic {
  Zerg({
    required super.name,
    required super.hp,
  });

  void regen() {}

  @override
  void healing() {
    // TODO: implement healing
  }
}
