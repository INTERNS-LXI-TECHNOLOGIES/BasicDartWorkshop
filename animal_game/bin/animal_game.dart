import 'dart:io';
import 'forest.dart';

void main() {
  Forest forest = Forest();
  forest.generateAnimals();
  forest.printDetails();
  forest.selectAnimals();
  //forest.winnerAnimal();
}
