import 'dart:io';
import 'Animal.dart';
//import 'Herbivores.dart';

class Rabbit extends Animal /*implements Herbivores*/ {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  Rabbit(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
  }
  void printRabbit() {
    print(name);
  }

  void animalEat() {
    print('$name  eat carrot');
  }
}
