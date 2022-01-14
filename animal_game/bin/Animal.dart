// ignore_for_file: file_names, unused_import

import 'carnivores.dart';
import 'herbivores.dart';
import 'location.dart';

abstract class Animal {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  int? speed;
  int? vision;
  int? distance;
  bool isFight = true;
  bool isAlive = true;
  Location currentLocation = Location(2, 2);

  eat();

  getName() {}

  bool? fightAnimals();

  luckFact() {}
  List? getLocation() {}
  changeCurrentLocation(int x, int y) {}
}
