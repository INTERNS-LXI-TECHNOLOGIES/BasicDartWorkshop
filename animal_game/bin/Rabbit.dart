// ignore_for_file: file_names, prefer_initializing_formals, overridden_fields

import 'dart:io';
import 'dart:math';
import 'animal.dart';
import 'herbivores.dart';

class Rabbit extends Animal implements Herbivores {
  Rabbit(String name, int energyLevel, int hungryLevel, int speed) {
    super.name = name;
    super.energyLevel = energyLevel;
    super.hungryLevel = hungryLevel;
    super.speed;
  }
  @override
  getName() {
    print('$name');
  }

  @override
  eat() {
    print('$name  eat carrot');
  }

  @override
  bool fightAnimals() {
    bool isFight = false;
    return isFight;
  }

  @override
  List distance() {
    var random = Random();
    int r1 = random.nextInt(15) + 5;
    int r2 = random.nextInt(15) + 5;

    List<int> listDis = [r1, r2];
    return listDis;
  }

  int luckFact() {
    var random = Random();
    int luck = random.nextInt(20) + 1;
    return luck;
  }

  @override
  escapeHerb() {
    // TODO: implement herbEscape
    //throw UnimplementedError();
    // ignore: dead_code
    print('$name  ran away!!!!!');
  }

  @override
  int vision() {
    var random = Random();
    int v1 = random.nextInt(15) + 5;
    return v1;
  }

  void defendsHerb(int d) {
    if (speed! > d) {
      print('$name get shield');
    } else {
      print('$name not get shield');
    }
  }
}
