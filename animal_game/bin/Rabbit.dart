import 'dart:io';
import 'Animal.dart';
//import 'Herbivores.dart';

class Rabbit extends Animal /*implements Herbivores*/ {
  String? name;
  int? energyLevel;
  Rabbit(String name, int energyLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
  }
  void printRabbit() {
    print(name);
  }
}
