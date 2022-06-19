import 'animal.dart';
import 'cat.dart';

void main(List<String> args) {
  Animal cat = new Cat('kitty', 1);
  cat.helloMaster(cat);
}
