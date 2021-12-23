// ignore_for_file: file_names

import 'dart:io';
import 'dart:core';
import 'dart:math';
import 'Animal.dart';
import 'Elephant.dart';
import 'Lion.dart';
import 'Rabbit.dart';
import 'Tiger.dart';
import 'Carnivores.dart';
import 'Herbivores.dart';

class Forest {
  List<Animal> animalList = [
    Tiger('tigu', mathRandom(45), mathRandom(65)),
    Lion('lion king', mathRandom(55), mathRandom(80)),
    Elephant('pambadi rajan', mathRandom(50), mathRandom(70)),
    Rabbit('kuttu the rabbit', mathRandom(20), mathRandom(30))
  ];

  void printAnimal() {
    print('\n\n\t*******Dark Forest*******\n\n\t***Animals***\n');
    for (int i = 0; i < animalList.length; i++) {
      print(animalList[i].getName());
      print(animalList[i].animalEat());
      print('\n**');
    }
    selectAnimal();
  }

  List animal_list() {
    return animalList;
  }

  void selectAnimal() {
    for (int i = 0; i < 20; i++) {
      int? x = mathRandom(3);
      int? y = mathRandom(3);
      if (x != y) {
        animalFight(animalList[x], animalList[y]);
      }
    }
  }

  void animalFight(Animal a1, Animal a2) {
    if (a1.isAlive == true && a2.isAlive == true) {
      print('\n${a1.name} \tmeet\t ${a2.name}');
      if (a1.animalFight() == true || a2.animalFight() == true) {
        print('\t*****Fight begins*****');
        if (a1.energyLevel! > a2.energyLevel! &&
            a1.hungryLevel! > a2.hungryLevel!) {
          print('\n++++***${a1.name} is the winner ***+++++\n');
          a1.energyLevel! - 5;
          a1.hungryLevel! - 5;
          a2.energyLevel! - 10;
          if (a1.energyLevel! <= 0) {
            a1.isAlive = false;
            animalList.remove(a1);
          }
        } else {
          print('\n+++++***${a2.name} is the winner ***+++++\n');
          a2.energyLevel! - 5;
          a2.hungryLevel! - 5;
          a1.energyLevel! - 10;
          if (a2.energyLevel! <= 0) {
            a2.isAlive = false;
            animalList.remove(a2);
          }
        }
      } else {
        print('\n******they are friends*****\n');
      }
    }

    winner();
  }

  void winner() {
    int x = 0, win = 0;
    for (int i = 0; i < animalList.length; i++) {
      if (animalList[i].isAlive == true && animalList[i].isFight == true) {
        x++;
        win = i;
      }
    }
    if (x == 1) {
      print('***********++++++++++--------*********//////');
      print('${animalList[win].name}is the winner');
    }
  }
}

int mathRandom(int a) {
  var random = new Random();
  int r = random.nextInt(a);
  return r;
}





  
  // void winnerAnimal() {
  //   int count = 0, k = 0, c = 0;
  //   for (int i = 0; i < 10; i++) {
  //     if (animalList[i].isAlive == true &&
  //         animalList[k].animalFight() == true) {
  //       count++;
  //       c = count;
  //       k = i;
  //     }
  //   }
  //   if (count == 5 && animalList[k].animalFight() == true) {
  //     print("\n\n\t+++++++++++The KING is ${animalList[k].name} ++++++++++");
  //   }
  // } 