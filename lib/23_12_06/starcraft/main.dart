import 'buildings/command_center.dart';
import 'buildings/hive.dart';
import 'buildings/nexus.dart';
import 'buildings_by_race/protoss_building.dart';
import 'buildings_by_race/terran_building.dart';
import 'buildings_by_race/zerg_building.dart';
import 'protoss_units/dragoon.dart';
import 'protoss_units/zealot.dart';
import 'terran_units/marine.dart';
import 'terran_units/medic.dart';
import 'terran_units/scv.dart';
import 'terran_units/tank.dart';
import 'terran_units/vulture.dart';
import 'units_by_race/protoss_unit.dart';
import 'units_by_race/terran_unit.dart';

void main() {
  final List<TerranUnit> playerListT = [];
// 테란유닛
  TerranUnit marine = Marine(name: '짐 레이너', hp: 75);
  TerranUnit medic = Medic(name: '의무관', hp: 70);
  TerranUnit tank = Tank(name: '탱크', hp: 220);
  TerranUnit vulture = Vulture(name: '벌처', hp: 75);
  TerranUnit scv = Scv(name: 'scv', hp: 60);

  addTerranUnit(terranUnitList: playerListT, terranUnit: marine);
  addTerranUnit(terranUnitList: playerListT, terranUnit: medic);
  addTerranUnit(terranUnitList: playerListT, terranUnit: tank);
  addTerranUnit(terranUnitList: playerListT, terranUnit: vulture);
  addTerranUnit(terranUnitList: playerListT, terranUnit: scv);
  addTerranUnit(terranUnitList: playerListT, terranUnit: marine);
  addTerranUnit(terranUnitList: playerListT, terranUnit: medic);
  addTerranUnit(terranUnitList: playerListT, terranUnit: tank);
  addTerranUnit(terranUnitList: playerListT, terranUnit: vulture);
  addTerranUnit(terranUnitList: playerListT, terranUnit: scv);
  addTerranUnit(terranUnitList: playerListT, terranUnit: marine);
  addTerranUnit(terranUnitList: playerListT, terranUnit: medic);
  addTerranUnit(terranUnitList: playerListT, terranUnit: tank);
  addTerranUnit(terranUnitList: playerListT, terranUnit: vulture);
  addTerranUnit(terranUnitList: playerListT, terranUnit: scv);

  for (TerranUnit terranUnit in playerListT) {
    print('현재 부대 $terranUnit');
  }

// 프로토스 유닛
  ProtossUnit zealot = Zealot(name: '질럿', hp: 100, shield: 60);
  ProtossUnit dragoon = Dragoon(name: '드라군', hp: 100, shield: 80);

// 건물
  TerranBuilding commandCenter = CommandCenter(name: '커멘드 센터', hp: 1500);
  ZergBuilding hive = Hive(name: '해처리', hp: 1500);
  ProtossBuilding nexus = Nexus(name: '넥서스', hp: 750, shield: 750);
}

void addTerranUnit({
  required List<TerranUnit> terranUnitList,
  required TerranUnit terranUnit,
}) {
  if (terranUnitList.length < 12) {
    terranUnitList.add(terranUnit);


  } else {
    // 리스트가 12개 이상이면 새로운 리스트를 만들어서 추가
    List<TerranUnit> newTerranUnitList = [];
    newTerranUnitList.add(terranUnit);
    // print(newTerranUnitList.toString());
    for (TerranUnit terranUnit in newTerranUnitList) {
      print('새 리스트 $terranUnit');
    }
  }
}
