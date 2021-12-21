import 'dart:io';
import 'Animal.dart';
import 'Carnivores.dart';

class Lion extends Animal implements Carnivores {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  //bool isFight = true;
  Lion(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
  }
  getName() {
    print(name);
  }

  animalEat() {
    print('eat meet');
  }

  bool animalFight() {
    bool isFight = true;
    return isFight;
  }
}
