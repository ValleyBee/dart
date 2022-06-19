import 'animal.dart';

class Cat extends Animal {
  Cat(String name, int age) : super(name: name, age: age);

  @override
  void HelloMaster() {
    print('animal - $name says Hello,Master!');
  }
}
