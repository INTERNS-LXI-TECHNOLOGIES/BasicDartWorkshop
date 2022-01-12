// ignore_for_file: file_names, overridden_fields, prefer_initializing_formals, non_constant_identifier_names, annotate_overrides

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'carnivores.dart';

class Tiger extends Animal implements Carnivores {
  Tiger(String name, int energyLevel, int hungryLevel, int speed, int vision,
      int distance) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.speed = speed;
    super.vision = vision;
    super.distance = distance;
  }

  @override
  getName() {
    print(name);
  }

  @override
  eat() {
    print('$name  eat meat');
  }

  bool fightAnimals() {
    bool isFight = true;
    return isFight;
  }

  @override
  List roam() {
    var random = Random();
    int r1 = random.nextInt(30) + 5;
    int r2 = random.nextInt(30) + 5;

    List<int> list_dis = [r1, r2];
    return list_dis;
  }

  @override
  fightCarnivores(Animal ani) {
    if (energyLevel! >= ani.energyLevel! || hungryLevel! >= ani.hungryLevel!) {
      print('***********************************$name is the winner');
      energyLevel = energyLevel! - 5;
      hungryLevel = hungryLevel! - 5;
      if (energyLevel! <= 0) {
        isAlive == false;
      }
    } else if (ani is Carnivores && ani.energyLevel! > energyLevel! ||
        ani.hungryLevel! > hungryLevel!) {
      print('***********************************${ani.name} is the winner');
    }
  }
}
