// ignore_for_file: file_names, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'herbivores.dart';
import 'location.dart';

class Rabbit extends Animal implements Herbivores {
  @override
  int? luckFact;
  Rabbit(String name, int energyLevel, int hungryLevel, int speed, int vision,
      int luckFact) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.speed = speed;
    super.vision = vision;
    this.luckFact = luckFact;
  }

  @override
  Location homeLocation = Location(20, 20);
  @override
  Location grazeLocation = Location(20, 20);
  @override
  Location currentLocation = Location(20, 20);
  @override
  Location getLocation() {
    return grazeLocation;
  }

  @override
  getName() {
    print('$name');
  }

  @override
  eat() {
    print('$name  eat carrot');
  }

  @override
  escapeHerb() {
    print('$name  ran away!!!!!');
  }

  @override
  bool defendsHerb() {
    if (luckFact! > 25) {
      print('$name get shield');
      escapeHerb();
      return true;
    } else {
      // print('$name not get shield');
      return false;
    }
  }

  @override
  changeCurrentLocation(int x, int y) {
    currentLocation = Location(x, y);
  }
}
