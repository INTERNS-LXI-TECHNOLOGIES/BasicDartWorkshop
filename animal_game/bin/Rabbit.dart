// ignore_for_file: file_names, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'Animal.dart';
import 'Herbivores.dart';

class Rabbit extends Animal implements Herbivores {
  @override
  String? name;
  @override
  int? energyLevel;
  @override
  int? hungryLevel;
  //bool isFight = false;
  Rabbit(String name, int energyLevel, int hungryLevel, int x, int y) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
    this.x = x;
    this.y = y;
  }
  @override
  getName() {
    print('$name');
  }

  @override
  animalEat() {
    print('$name  eat carrot');
  }

  @override
  bool animalFight() {
    bool isFight = false;
    return isFight;
  }

  @override
  List animal_dis() {
    var random = new Random();
    int r1 = random.nextInt(x!) + 5;
    int r2 = random.nextInt(y!) + 5;

    List<int> listDis = [r1, r2];
    return listDis;
  }

  int luckFact() {
    var random = new Random();
    int luck = random.nextInt(20) + 1;
    return luck;
  }
}
