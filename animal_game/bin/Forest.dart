import 'dart:io';
import 'dart:io';
//import 'Animal.dart';
import 'Animal.dart';
import 'Elephant.dart';
import 'Lion.dart';
import 'Rabbit.dart';
import 'Tiger.dart';

class Forest {
  // Animal animal = new Animal();
  Tiger tiger = new Tiger("mottu the rabbit", 10);
  Lion lion = new Lion('sambu the lion', 30);
  Elephant elephant = new Elephant('tuttu the elephant', 10);
  Rabbit rabbit = new Rabbit('suttu the rabbit', 7);
  List animalList = <Animal>[];

  void printAnimal() {
    print('\t*******Dark Forest*******\n\n\t***Animals***\n');
    tiger.printTiger();
    lion.printLion();
    elephant.printElephant();
    rabbit.printRabbit();
  }
}
