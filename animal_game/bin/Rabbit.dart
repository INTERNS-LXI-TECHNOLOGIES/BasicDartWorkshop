// ignore_for_file: file_names

import 'dart:io';
import 'dart:math';
import 'Animal.dart';
import 'Herbivores.dart';

class Rabbit extends Animal implements Herbivores {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  //bool isFight = false;
  Rabbit(String name, int energyLevel, int hungryLevel, int x, int y) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
    this.x = x;
    this.y = y;
  }
  getName() {
    print(name);
  }

  animalEat() {
    print('$name  eat carrot');
  }

  bool animalFight() {
    bool isFight = false;
    return isFight;
  }

  List animal_dis() {
    var random = new Random();
    int r1 = random.nextInt(x!) + 5;
    int r2 = random.nextInt(y!) + 5;

    List<int> list_dis = [r1, r2];
    return list_dis;
  }
}
