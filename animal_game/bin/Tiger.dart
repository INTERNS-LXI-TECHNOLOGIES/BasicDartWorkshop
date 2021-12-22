// ignore_for_file: file_names

import 'dart:io';
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
  Tiger(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
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
}
