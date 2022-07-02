// GENERICS
class Item {
  late int id;
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
  @override
  String toString() {
    return 'id: $id  name: $name  price: $price';
  }
}

class Book extends Item {
  late int id;
  late String name;
  late double price;
  Book(this.id, this.name, this.price) : super(id, name, price);

  Box operator +(Book otherBook) {
    return Box([this, otherBook]);
  }

  @override
  String toString() {
    return 'id: $id  name: $name  price: $price';
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

void firstElement<T>(List<T> list) {
  for (int i = 0; i < (list.length); i++) {
    print('- ${list[i]}');
  }
}

void main(List<String> args) {
  Book book1 = new Book(1, 'book1', 11.11);
  Book book2 = new Book(2, 'book2', 22.22);
  Book book3 = new Book(3, 'book3', 33.33);
  Box<Item> box = new Box<Item>([]);
  box + book1;
  box + book2;
  box + book3;
  box + new Book(4, 'book4', 55.55);
  box.printListItems();
  print('*' * 30);
  box + Magazin(5, 'Dart_best', 64.64);
  box.printListItems();

  List<MyID> list = <MyID>[MyID(1), MyID(2)];
  print('*' * 30);
  firstElement(list);
  firstElement(box.items);
/* **************************************** */
  Person person1 = new Person(id: 1, name: 'dude');
  Person person2 = new Person(id: 2, name: 'agant Stealth', code: 'EF#2'); // type String
  Person person3 = new Person(id: 3, name: 'agant Stealth', code: book1); // type Class Book
  print('*' * 30);
  print(person1);
  print(person1.code.runtimeType);
  print(person2);
  print(person2.code.runtimeType);
  print(person3.code.runtimeType);
  print(person3);
  print('*' * 30);
  Alex alex = new Alex('xxx777');
  print(alex);
  Group group = new Group(person1);
  print(group);
}

/* ******************* */
class Person<T> {
  late int? id;
  late String? name;
  late T? code;
  Person({required this.id, required this.name, this.code});

  @override
  String toString() {
    return 'id: $id  name: $name  Specialcode: ($code)';
  }
}

class Alex<T> extends Person {
  //late int id = 1;
  late T anyId;
  //late String name;

  Alex(this.anyId) : super(id: 1, name: 'alex', code: anyId);
}

class Group<T extends Person> extends Person {
  late T anyPerson;
  Group(this.anyPerson) : super(id: 0, name: '', code: anyPerson);
}
