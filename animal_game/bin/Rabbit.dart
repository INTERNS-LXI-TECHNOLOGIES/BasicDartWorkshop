// ignore_for_file: file_names, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'herbivores.dart';
import 'location.dart';

class Rabbit extends Animal implements Herbivores {
  Rabbit(
    String name,
    int energyLevel,
    int hungryLevel,
    int speed,
    int vision,
  ) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.speed = speed;
    super.vision = vision;
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

  var random = Random();
  int _luckFact() {
    int luck = random.nextInt(30) + 1;
    return luck;
  }

  @override
  escapeHerb() {
    print('$name  ran away!!!!!');
  }

  @override
  bool defendsHerb() {
    if (_luckFact() > 25) {
      print('$name get shield');
      escapeHerb();
      return true;
    } else {
      // print('$name not get shield');
      return false;
    }
  }

  @override
  afterFight(bool isWin) {
    if (isWin == false) {
      energyLevel = energyLevel! - 10;
      hungryLevel = hungryLevel! - 10;
      if (energyLevel! <= 0) {
        isAlive == false;
        print('$name is DEAD ');
      }
    }
  }

  @override
  changeCurrentLocation(int x, int y) {
    currentLocation = Location(x, y);
  }
}
