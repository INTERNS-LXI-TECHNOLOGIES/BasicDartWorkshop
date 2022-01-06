// ignore_for_file: file_names, unnecessary_this, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'herbivores.dart';

class Elephant extends Animal implements Herbivores {
  Elephant(String name, int energyLevel, int hungryLevel) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
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
  List distance() {
    var random = Random();
    int r1 = random.nextInt(20) + 5;
    int r2 = random.nextInt(20) + 5;

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
  escapeHerb() {
    // TODO: implement herbEscape
    //throw UnimplementedError();
    // ignore: dead_code
    print('$name got luck and it ran away!!!!!');
  }

  @override
  int vision() {
    var random = Random();
    int v1 = random.nextInt(15) + 5;
    return v1;
  }
}
