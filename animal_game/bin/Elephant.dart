import 'dart:io';
import 'Animal.dart';
import 'Herbivores.dart';

class Elephant extends Animal implements Herbivores {
  String? name;
  int? energyLevel;
  int? hungryLevel;

  Elephant(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
  }
  getName() {
    print(name);
  }

  animalEat() {
    print('$name  eat leaf');
  }

  bool animalFight() {
    bool isFight = false;
    return isFight;
  }
}
