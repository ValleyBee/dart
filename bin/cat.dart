import 'animal.dart';

class Cat extends Animal {
  Cat(String name, int age) : super(name: name, age: age);

  @override
  void helloMaster(Animal cat) {
    print('animal $cat , $name says Hello,Master!');
  }

  void purr() {
    print('$name: Meoooooowwwww');
  }
}
