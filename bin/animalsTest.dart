import 'dart:math';

import 'animal.dart';
import 'cat.dart';
import 'dog.dart';

void main(List<String> args) {
  List<Animal> animal = [];
  animal.add(Cat(
    'kitty',
    1,
  ));
  //animal.add(Cat('Zuzzy', 2));
  animal.add(Dog('Wolf', 3));
  animal.add(Dog('Sharp', 4));

  animal.forEach((element) {
    element.helloMaster();
  }); /* animal: the cat, name: kitty, says Hello,Master!
animal: the cat, name: Zuzzy, says Hello,Master!
animal: the dog, name: Wolf, says Hello,Master!
animal: the dog, name: Sharp, says Hello,Master!
*/

  int randomAge() {
    Random age = new Random();
    return age.nextInt(10);
  }
}
