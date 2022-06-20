// public superclass
import 'dart:math';

class Animal {
  late String name;
  late int age;
  late int range;
  Animal(String name, int range) {
    this.name = name;

    if (range > 20) {
      print('Animals can`t live for so long = $range, it will be change to a max: 13');
      range = 13;
    }
    this.age = randomAge(range);
  }

  void helloMaster() {
    print("Animal: the animal, name: $name says Hello,Master!!");
  }

// generating random age for Animals
  int randomAge(int range) {
    Random age = new Random();
    return age.nextInt(range);
  }

  // @override
  // String toString() {
  //   return toString();
  // }
}
