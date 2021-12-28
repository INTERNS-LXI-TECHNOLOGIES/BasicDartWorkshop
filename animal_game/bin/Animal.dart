// ignore_for_file: file_names

import 'Carnivores.dart';
import 'dart:math';
import 'Herbivores.dart';

abstract class Animal {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  int? x;
  int? y;
  bool isFight = true;
  bool isAlive = true;
  animalEat() {}

  getName() {}

  List? animal_dis() {}

  bool? animalFight() {}
}
