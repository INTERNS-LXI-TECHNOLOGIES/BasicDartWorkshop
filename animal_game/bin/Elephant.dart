// ignore_for_file: file_names, unnecessary_this, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'herbivores.dart';

class Elephant extends Animal implements Herbivores {
  Elephant(String name, int energyLevel, int hungryLevel, int x, int y) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.x = x;
    super.y = y;
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
  escapeHerb() {
    // TODO: implement herbEscape
    //throw UnimplementedError();
    // ignore: dead_code
    print('$name got luck and it ran away!!!!!');
  }
}
