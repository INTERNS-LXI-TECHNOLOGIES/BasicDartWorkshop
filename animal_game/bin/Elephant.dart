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

  @override
  List getLocation() {
    Location location =
        Location(random.nextInt(20) + 2, random.nextInt(20) + 2);
    List<int> loclist = [];
    loclist.add(location.x!);
    loclist.add(location.y!);
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

  @override
  // ignore: non_constant_identifier_names
  graze(int x, int y) {
    var random = Random();
    int? position1, position2;
    position1 = random.nextInt(x) + 5;
    position2 = random.nextInt(y) + 5;
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
}
