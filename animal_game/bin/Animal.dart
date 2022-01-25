// ignore_for_file: file_names, unused_import, unused_element

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
  bool isAlive = true;
  Location currentLocation = Location(2, 2);
  Location homeLocation = Location(2, 2);

  eat();

  getName() {}

  _luckFact() {}
  Location? getLocation() {}

  changeCurrentLocation(int x, int y) {}
}
