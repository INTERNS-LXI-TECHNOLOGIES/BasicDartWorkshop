// ignore_for_file: file_names, unnecessary_this, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'herbivores.dart';
import 'location.dart';

class Elephant extends Animal implements Herbivores {
  Elephant(
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

  Location homeLocation = Location(20, 20);
  Location grazeLocation = Location(20, 20);
  @override
  Location currentLocation = Location(20, 20);
  @override
  List getLocation() {
    List<int> loclist = [];
    loclist.add(grazeLocation.x!);
    loclist.add(grazeLocation.y!);
    return loclist;
  }

  @override
  getName() {
    print(name);
  }

  @override
  eat() {
    print('$name  eat leaf');
  }

  @override
  bool fightAnimals() {
    bool isFight = false;
    return isFight;
  }

  var random = Random();
  @override
  int luckFact() {
    int luck = random.nextInt(30) + 1;
    return luck;
  }

  @override
  escapeHerb() {
    print('$name  ran away!!!!!');
  }

  @override
  void defendsHerb(int distance) {
    if (speed! > distance) {
      print('$name get shield');
    } else {
      print('$name not get shield');
    }
  }

  @override
  changeCurrentLocation(int x, int y) {
    currentLocation = Location(x, y);
  }
}
