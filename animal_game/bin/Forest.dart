// ignore_for_file: file_names, unnecessary_new, duplicate_ignore

import 'dart:core';
import 'dart:math';
import 'animal.dart';
import 'carnivores.dart';
import 'elephant.dart';
import 'herbivores.dart';
import 'lion.dart';
import 'rabbit.dart';
import 'tiger.dart';

class Forest {
  //Animals in the forest
  List<Animal> animalList = [];
  Tiger t1 = Tiger('sherkhan', mathRandom(45) + 20, mathRandom(65));
  Elephant e1 = Elephant('pambadi rajan', mathRandom(35) + 15, mathRandom(70));
  Rabbit r1 = Rabbit('kuttu the rabbit', mathRandom(20) + 10, mathRandom(30));
  Lion l1 = Lion('lion king', mathRandom(55) + 20, mathRandom(80));
//
  generateAnimals() {
    animalList.add(t1);
    animalList.add(l1);
    animalList.add(e1);
    animalList.add(r1);
  }
//
//Animal deatails

  void printDeatails() {
    print('\n\n\t*******Dark Forest*******\n\n\t***Animals***\n');
    for (int i = 0; i < animalList.length; i++) {
      animalList[i].getName();
      animalList[i].eat();
      print('\n**');
    }
    selectAnimals();
  }

//
//
//
//

  List animal_list() {
    return animalList;
  }

//
//
//
//Select  random animals

  void selectAnimals() {
    int w = 0;
    do {
      w = 0;
      for (int i = 0; i < animalList.length; i++) {
        if (animalList[i].isAlive == true &&
            animalList[i] is Carnivores &&
            animalList[i].isFight == true) {
          w++;
        }
      }

      if (w != 1) {
        int x, y;

        do {
          x = mathRandom(animalList.length);
          y = mathRandom(animalList.length);
        } while (animalList[x].isFight == false ||
            x == y ||
            animalList[x].isAlive == false ||
            animalList[y].isAlive == false);
        int d = distance(animalList[x], animalList[y]);
        actions(animalList[x], animalList[y], d);
      }
    } while (w != 1);
  }

  //
  //
  //Distance b/w animals
  int distance(Animal an1, Animal an2) {
    List? anList1 = an1.distance();
    List? anList2 = an2.distance();
    int r = ((anList1![0] - anList2![0]) ^ 2 + (anList1[1] - anList2[1]) ^ 2);
    return r;
  }
  //
  //

  //
  //activities of animals
  void actions(Animal an1, Animal an2, int r) {
    if (r > 2) {
      print('\n\t*******${an1.name} & ${an2.name} are in the range');
      if (an1 is Herbivores && an1.luckFact() > 15) {
        an1.escapeHerb();
      } else if (an2 is Herbivores && an2.luckFact() > 15) {
        an2.escapeHerb();
      } else {
        arrangeFight(an1, an2);
      }
    } else {
      print('\n\t*******${an1.name} far from ${an2.name}');
    }
  }

  //
  //
  //set fight

  void arrangeFight(Animal a1, Animal a2) {
    if (a1.isAlive == true && a2.isAlive == true) {
      print('\n${a1.name}- \tmeet\t ${a2.name}-\n');
      if (a1.fightAnimals() == true || a2.fightAnimals() == true) {
        print('\n\t*****Fight begins*****');
        if (a1 is Carnivores && a1.fightAnimals() == true) {
          a1.fightCarnivores(a2);
          a2.energyLevel = a2.energyLevel! - 10;
          a2.hungryLevel = a2.hungryLevel! - 10;
          if (a2.energyLevel! <= 0) {
            a2.isAlive = false;
          }
        } else if (a2 is Carnivores && a2.fightAnimals() == true) {
          a2.fightCarnivores(a1);
          a1.energyLevel = a1.energyLevel! - 10;
          a1.hungryLevel = a1.hungryLevel! - 10;
          if (a1.energyLevel! <= 0) {
            a1.isAlive = false;
          }
        } else if (a1 is Carnivores && a2 is Carnivores) {
          a1.fightCarnivores(a2);
          a2.energyLevel = a2.energyLevel! - 10;
          a2.hungryLevel = a2.hungryLevel! - 10;
          if (a2.energyLevel! <= 0) {
            a2.isAlive = false;
          }
        } else {
          print('**************************************************No Fights');
        }
      } else {
        print('\n******they are friends*****\n');
      }
      winner();
    }
  }

//

//
//
//Pickup the orginal winner
  void winner() {
    int x = 0, win = 0;
    for (int i = 0; i < animalList.length; i++) {
      if (animalList[i] is Carnivores &&
          animalList[i].isAlive == true &&
          animalList[i].fightAnimals() == true) {
        x++;
        win = i;
      }
    }

    if (x == 1) {
      print('***********++++++++++--------*********//////');
      print('${animalList[win].name}  is the winner winner');
    }
  }
}

//
//
//
//
int mathRandom(int a) {
  var random = new Random();
  int r = random.nextInt(a);
  return r;
}
