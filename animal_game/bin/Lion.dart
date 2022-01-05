// ignore_for_file: file_names, prefer_initializing_formals

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'carnivores.dart';

class Lion extends Animal implements Carnivores {
  Lion(String name, int energyLevel, int hungryLevel) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
  }
  @override
  getName() {
    print(name);
  }

  @override
  eat() {
    print('eat meet');
  }

  @override
  bool fightAnimals() {
    bool isFight = true;
    return isFight;
  }

  @override
  List distance() {
    // ignore: unnecessary_new
    var random = new Random();
    int r1 = random.nextInt(30) + 5;
    int r2 = random.nextInt(30) + 5;

    // ignore: non_constant_identifier_names
    List<int> list_dis = [r1, r2];
    return list_dis;
  }

  @override
  fightCarnivores(Animal ani) {
    if (energyLevel! > ani.energyLevel! && hungryLevel! > ani.hungryLevel!) {
      print('***********************************$name is the winner');
      energyLevel = energyLevel! - 5;
      hungryLevel = hungryLevel! - 5;
      if (energyLevel! <= 0) {
        isAlive == false;
      }
    } else if (ani is Carnivores &&
        ani.energyLevel! > energyLevel! &&
        ani.hungryLevel! > hungryLevel!) {
      print('***********************************${ani.name} is the winner');
    } // else {
    //   print(
    //       '***********************************${ani.name} is ran away from $name');
    // }
  }
}
