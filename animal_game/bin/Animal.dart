// ignore_for_file: file_names, unused_import

import 'carnivores.dart';
import 'herbivores.dart';

abstract class Animal {
  String? name;
  int? energyLevel;
  int? hungryLevel;
  int? speed;
  int? vision;
  int? distance;
  bool isFight = true;
  bool isAlive = true;
  eat();

  getName() {}

  bool? fightAnimals();

  luckFact() {}
}
