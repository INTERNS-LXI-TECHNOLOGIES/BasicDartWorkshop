import 'dart:io';
import 'Animal.dart';
//import 'Carnivores.dart';

class Lion extends Animal /*implements Carnivores*/ {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  Lion(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
  }
  void printLion() {
    print(name);
  }

  void animalEat() {
    print('$name  eat meet');
  }
}
