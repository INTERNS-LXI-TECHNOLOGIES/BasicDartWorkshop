// ignore_for_file: file_names, unused_import

import 'Carnivores.dart';
import 'Herbivores.dart';

abstract class Animal {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  int? x;
  int? y;
  bool isFight = true;
  bool isAlive = true;
  animalEat();

  getName() {}

  List? animal_dis();

  bool? animalFight();

  luckFact() {}

  herbEscape() {}
}
