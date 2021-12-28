// ignore_for_file: file_names

import 'dart:io';
import 'dart:math';
import 'Animal.dart';
import 'Carnivores.dart';

class Tiger extends Animal implements Carnivores {
  @override
  String? name;
  @override
  int? energyLevel;
  @override
  int? hungryLevel;
  //bool isFight = true;
  Tiger(String name, int energyLevel, int hungryLevel, int x, int y) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
    this.x = x;
    this.y = y;
  }

  getName() {
    print(name);
  }

  @override
  animalEat() {
    print('$name  eat meat');
    //print("tigerdemo");
  }

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
