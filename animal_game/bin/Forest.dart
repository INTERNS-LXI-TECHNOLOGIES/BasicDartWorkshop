// ignore_for_file: file_names

import 'dart:core';
import 'dart:math';
import 'Animal.dart';
import 'Carnivores.dart';
import 'Elephant.dart';
import 'Herbivores.dart';
import 'Lion.dart';
import 'Rabbit.dart';
import 'Tiger.dart';

class Forest {
  //Animals in the forest
  List<Animal> animalList = [
    Tiger('tigu', mathRandom(45), mathRandom(65), 30, 20),
    Lion('lion king', mathRandom(55), mathRandom(80), 30, 20),
    Elephant('pambadi rajan', mathRandom(35), mathRandom(70), 20, 15),
    Rabbit('kuttu the rabbit', mathRandom(20), mathRandom(30), 10, 10)
  ];
//
//
//
//Animal deatails

  void printAnimal() {
    print('\n\n\t*******Dark Forest*******\n\n\t***Animals***\n');
    for (int i = 0; i < animalList.length; i++) {
      print(animalList[i].getName());
      print(animalList[i].animalEat());
      print('\n**');
    }
    selectAnimal();
    //meet();
    listout();
    //print(animalList[1].animal_dis());
  }

//
//
  void listout() {
    List<int> int_list = [10, 20];
    int_list.add(30);
    for (int i = 0; i < int_list.length; i++) {
      //print(int_list[i]);
    }
    int a = int_list[0] + int_list[2];
    // print(a);
    List? list1 = animalList[0].animal_dis();

    //print(list1?.first);
  }
//
//

  List animal_list() {
    return animalList;
  }

//
//
//
//Select two random animals

  void selectAnimal() {
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
        animalDistance(animalList[x], animalList[y]);
      }
    } while (w != 1);
  }

  //
  //
  //check their distance
  int animalDistance(Animal an1, Animal an2) {
    List? an_list1 = an1.animal_dis();
    List? an_list2 = an2.animal_dis();
    int r =
        ((an_list1![0] - an_list2![0]) ^ 2 + (an_list1[1] - an_list2[1]) ^ 2);
    if (r > 5) {
      // if (an1 is Herbivores || an2 is Herbivores) {
      //   if (an1.luckFact() > 5 || an2.luckFact() > 5) {
      //     print('he got luck');
      //   } else {
      print('\n\t*******${an1.name} & ${an2.name} are in the range');
      // }
      // }
      animalFight(an1, an2);
    } else {
      print('\n\t*******${an1.name} far from ${an2.name}');
    }

    // double d = sqrt(r);
    //print(r);
    return r;
  }

  //
  //
  //Do fight

  void animalFight(Animal a1, Animal a2) {
    if (a1.isAlive == true && a2.isAlive == true) {
      print(
          '\n${a1.name}-${a1.energyLevel} \tmeet\t ${a2.name}-${a2.energyLevel}');
      if (a1.animalFight() == true || a2.animalFight() == true) {
        print('\t*****Fight begins*****');
        if (a1.energyLevel! > a2.energyLevel! &&
            a1.hungryLevel! > a2.hungryLevel!) {
          if (a1.animalFight() == true) {
            print(
                '\n++++***${a1.name}-${a1.energyLevel}  is the winner ***+++++\n');
          } else {
            print('${a1.name} is surived');
          }
          a1.energyLevel = a1.energyLevel! - 10;
          a1.energyLevel = a1.hungryLevel! - 10;
          a2.energyLevel = a2.energyLevel! - 20;
          print('energy level afterfight=${a1.energyLevel} ');
          if (a2.energyLevel! <= 0) {
            a2.isAlive = false;
          }
        } else {
          if (a2.animalFight() == true) {
            print(
                '\n++++***${a2.name}-${a2.energyLevel}  is the winner ***+++++\n');
          } else {
            print('${a2.name} is surived');
          }
          a2.energyLevel = a2.energyLevel! - 10;
          a2.hungryLevel = a2.hungryLevel! - 10;
          a1.energyLevel = a1.energyLevel! - 20;
          print('energy level afterfight=${a1.energyLevel} ');
          if (a1.energyLevel! <= 0) {
            a1.isAlive = false;
          }
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
      if (animalList[i].isAlive == true &&
          animalList[i].animalFight() == true &&
          animalList[i].energyLevel! > 5) {
        x++;
        win = i;
      }
    }

    if (x == 1) {
      print('***********++++++++++--------*********//////');
      print('${animalList[win].name}  is the winner winner');
    } else {
      //print('${animalList[win].name}ooooopppppsssss!!!!');
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
