import 'dart:io';
import 'Animal.dart';
//import 'Herbivores.dart';

class Elephant extends Animal /* implements Herbivores*/ {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  Elephant(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
  }
  void printElephant() {
    print(name);
  }

  void animalEat() {
    print('$name  eat leaf');
  }
}
