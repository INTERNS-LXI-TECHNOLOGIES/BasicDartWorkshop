// ignore_for_file: file_names, prefer_initializing_formals

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'carnivores.dart';

class Lion extends Animal implements Carnivores {
  Lion(String name, int energyLevel, int hungryLevel, int x, int y) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.x = x;
    super.y = y;
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
    int r1 = random.nextInt(x!) + 5;
    int r2 = random.nextInt(y!) + 5;

    List<int> list_dis = [r1, r2];
    return list_dis;
  }

  @override
  Animal fightCarnivores(Animal ani) {
    if (energyLevel! > ani.energyLevel! && hungryLevel! > ani.hungryLevel!) {
      print('***********************************$name is the winner');
      energyLevel = energyLevel! - 5;
      hungryLevel = hungryLevel! - 5;
      return this;
    } else {
      return ani;
    }
  }
}
