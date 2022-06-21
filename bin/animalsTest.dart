// public main class creating instance of classes animal,Cat,Dog
import 'animal.dart';
import 'cat.dart';
import 'dog.dart';

void main(List<String> args) {
  List<Animal> animal = [];
  animal.add(Cat('kitty', 7));
  animal.add(Cat('Zuzzy', 7));
  animal.add(Dog('Wolf', 13));
  animal.add(Dog('Sharp', 3));

  animal.forEach((element) {
    element.helloMaster();
  }); /* animal: the cat, name: kitty, says Hello,Master!
animal: the cat, name: Zuzzy, says Hello,Master!
animal: the dog, name: Wolf, says Hello,Master!
animal: the dog, name: Sharp, says Hello,Master!
*/

  void rand() {
    print(1);
  }
}
