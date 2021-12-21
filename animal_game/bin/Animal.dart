import 'Carnivores.dart';
import 'Herbivores.dart';

abstract class Animal {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  bool isFight = true;
  bool isAlive = true;
  animalEat() {}

  getName() {}

  bool animalFight() {
    return isFight;
  }
}
