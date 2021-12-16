import 'dart:io';
import 'Animal.dart';
//import 'Carnivores.dart';

class Tiger extends Animal /* implements Carnivores*/ {
  String? name;
  int? energyLevel;
  Tiger(String name, int energyLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
  }
  void printTiger() {
    print(name);
  }
}
