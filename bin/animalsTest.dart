import 'animal.dart';
import 'cat.dart';
import 'dog.dart';

void main(List<String> args) {
  List<Animal> animal = [];
  animal.add(Cat('kitty', 1));
  animal.add(Cat('Zuzzy', 2));
  animal.add(Dog('Wolf', 3));
  animal.add(Dog('Sharp', 4));

  animal.forEach((element) {
    element.helloMaster();
  });

  //print(list);
}
