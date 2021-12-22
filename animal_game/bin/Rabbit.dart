// ignore_for_file: file_names

import 'dart:io';
import 'Animal.dart';
import 'Herbivores.dart';

class Rabbit extends Animal implements Herbivores {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  //bool isFight = false;
  Rabbit(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
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
}
