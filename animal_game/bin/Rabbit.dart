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
    print('$name');
  }

  @override
  eat() {
    print('$name  eat carrot');
  }

  @override
  bool fightAnimals() {
    bool isFight = false;
    return isFight;
  }

  var random = Random();
  @override
  graze(int x, int y) {
    int? position1, position2;
    position1 = random.nextInt(x) + 5;
    position2 = random.nextInt(y) + 5;
  }

  int luckFact() {
    var random = Random();
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
