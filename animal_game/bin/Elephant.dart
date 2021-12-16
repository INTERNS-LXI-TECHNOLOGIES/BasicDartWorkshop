import 'dart:io';
import 'Animal.dart';
//import 'Herbivores.dart';

class Elephant extends Animal /* implements Herbivores*/ {
  String? name;
  int? energyLevel;
  Elephant(String name, int energyLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
  }
  void printElephant() {
    print(name);
  }
}
