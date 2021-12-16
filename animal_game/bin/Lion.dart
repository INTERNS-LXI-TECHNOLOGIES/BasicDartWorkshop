import 'dart:io';
import 'Animal.dart';
//import 'Carnivores.dart';

class Lion extends Animal /*implements Carnivores*/ {
  String? name;
  int? energyLevel;
  Lion(String name, int energyLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
  }
  void printLion() {
    print(name);
  }
}
