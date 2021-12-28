// ignore_for_file: file_names

import 'dart:io';
import 'dart:math';
import 'Animal.dart';
import 'Carnivores.dart';

class Lion extends Animal implements Carnivores {
  @override
  String? name;
  @override
  int? energyLevel;
  @override
  int? hungryLevel;
  int? x;
  int? y; //bool isFight = true;
  Lion(String name, int energyLevel, int hungryLevel, int x, int y) {
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
    print('eat meet');
  }

  @override
  bool animalFight() {
    bool isFight = true;
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
