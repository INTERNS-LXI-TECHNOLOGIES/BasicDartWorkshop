// ignore_for_file: file_names, unnecessary_this, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'Animal.dart';
import 'Herbivores.dart';

class Elephant extends Animal implements Herbivores {
  @override
  String? name;
  @override
  int? energyLevel;
  @override
  int? hungryLevel;

  Elephant(String name, int energyLevel, int hungryLevel, int x, int y) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
    this.x = x;
    this.y = y;
  }
  @override
  getName() {
    print(name);
  }

  @override
  animalEat() {
    print('$name  eat leaf');
  }

  @override
  bool animalFight() {
    bool isFight = false;
    return isFight;
  }

  @override
  // ignore: non_constant_identifier_names
  List animal_dis() {
    var random = Random();
    int r1 = random.nextInt(x!) + 5;
    int r2 = random.nextInt(y!) + 5;

    List<int> list_dis = [r1, r2];
    return list_dis;
  }

  @override
  int luckFact() {
    var random = Random();
    int luck = random.nextInt(20) + 1;
    return luck;
  }

  @override
  herbEscape() {
    // TODO: implement herbEscape
    //throw UnimplementedError();
    // ignore: dead_code
    print('$name got luck and it ran away!!!!!');
  }
}
