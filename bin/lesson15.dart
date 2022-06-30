// GENERICS
class Item<T> {
  late int id;
  // /late T anyId;
  late String name;
  late double price;

  Item(this.id, this.name, this.price);
}

class MyID {
  late int myId;
  late String idAsString;

  MyID(int myId) {
    this.myId = myId;
    idAsString = myId.toString();
  }
  @override
  String toString() {
    return idAsString;
  }
}

class Magazin extends Item {
  late int id;
  late String name;
  late double price;
  Magazin(this.id, this.name, this.price) : super(id, name, price);
}

class Book extends Item {
  late int id;
  late String name;
  late double price;
  Book(this.id, this.name, this.price) : super(id, name, price);

  Box operator +(Book otherBook) {
    return Box([this, otherBook]);
  }
}

class Box<T extends Item> {
  List<T> items;
  Box(this.items);

  void printListItems() {
    for (T element in items) {
      print('${element.id}  ${element.name}  ${element.price}');
    }
  }

  void operator +(T book) {
    items.add(book);
  }
}

T? firstElement<T>(List<T> list) {
  T? result;
  for (int i = 0; i < (list.length); i++) {
    result = list[i];
    print('-- $result');
  }
  ;
  return result;
}

void main(List<String> args) {
  Book book1 = new Book(1, 'book1', 22);
  Book book2 = new Book(2, 'book2', 33);
  var box = book1 + book2;
  box.printListItems();
  print('*' * 30);
  box + Magazin(3, 'Dart best', 44);
  box.printListItems();

  List<MyID> list = <MyID>[MyID(1), MyID(2)];
  print('*' * 30);
  print(firstElement(list));

  Person person1 = new Person(1, 'dd');
  Person person2 = new Person('two', 'agant Stealth', 'EF#2');
  print('*' * 30);
  print(person1);
  print(person1.anyTypeId.runtimeType);
  print(person2);
  print(person2.anyTypeId.runtimeType);
}

class Person<T> {
  late T? anyTypeId;
  late String name;
  late String? code;
  Person(this.anyTypeId, this.name, [this.code]);

  @override
  String toString() {
    return 'anyType: $anyTypeId  name: $name  code: $code';
  }
}

//class 
