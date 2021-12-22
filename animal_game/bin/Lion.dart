// ignore_for_file: file_names

import 'dart:io';
import 'Animal.dart';
import 'Carnivores.dart';

class Lion extends Animal implements Carnivores {
  @override
  String? name;
  @override
  int? energyLevel;
  @override
  int? hungryLevel;
  //bool isFight = true;
  Lion(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
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
}
