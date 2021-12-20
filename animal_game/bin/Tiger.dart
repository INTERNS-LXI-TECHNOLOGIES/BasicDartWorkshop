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
  Tiger(String name, int energyLevel, int hungryLevel) {
    this.name = name;
    this.energyLevel = energyLevel;
    this.hungryLevel = hungryLevel;
  }

  // void printTiger() {
  //   print(name);
  // }

  @override
  void animalEat() {
    print('$name  eat meat');
    //print("tigerdemo");
  }
}
