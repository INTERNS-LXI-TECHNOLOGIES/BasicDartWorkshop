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
    animalMeet();
  }

  void animalMeet() {
    print('** Animal meet**');
    int x, y;
    for (int i = 0; i < 20; i++) {
      x = mathRandom(3);
      y = mathRandom(3);
      if (x != y) {
        if (animalList[x].isAlive == true && animalList[y].isAlive == true) {
          print('\n${animalList[x].name} \tmeet\t ${animalList[y].name}');
          if (animalList[x].animalFight() == true ||
              animalList[y].animalFight() == true) {
            print('\t*****Fight begins*****');
            if (animalList[x].energyLevel! > animalList[y].energyLevel! &&
                animalList[x].hungryLevel! > animalList[y].hungryLevel!) {
              print('\n++++***${animalList[x].name} is the winner ***+++++\n');
              animalList[x].energyLevel! - 5;
              animalList[x].hungryLevel! - 5;
              animalList[y].energyLevel! - 10;
              if (animalList[x].energyLevel! <= 0) {
                animalList[x].isAlive = false;
              }
            } else {
              print('\n+++++***${animalList[y].name} is the winner ***+++++\n');
              animalList[y].energyLevel! - 5;
              animalList[y].hungryLevel! - 5;
              animalList[x].energyLevel! - 10;
              if (animalList[y].energyLevel! <= 0) {
                animalList[y].isAlive = false;
              }
            }
          } else {
            print('\n******they are friends*****\n');
          }
        }
      }
    }
  }

  void winnerAnimal(Animal animal) {
    print("${animal} is the winner");
  }
}

int mathRandom(int a) {
  var random = new Random();
  int r = random.nextInt(a);
  return r;
}
