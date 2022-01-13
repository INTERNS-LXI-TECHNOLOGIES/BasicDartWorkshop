// ignore_for_file: file_names, unnecessary_this, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'herbivores.dart';

class Elephant extends Animal implements Herbivores {
  Elephant(String name, int energyLevel, int hungryLevel, int speed, int vision,
      int distance) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.speed = speed;
    super.vision = vision;
    super.distance = distance;
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

  @override
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
