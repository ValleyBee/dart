// GENERICS
class Item {
  late int id;
  late String name;
  late double price;
  Item(this.id, this.name, this.price);
}

class MyID {
  late int id;
  late String idAsString;
  MyID(this.id) : idAsString = id.toString();
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
  // late T id;
  // late String name;
  // late double price;

  //Product(this.id, this.name, this.price);

  // T getId() => id;
  // void setId(T idAsString) => id = idAsString;
}

void main(List<String> args) {
  Book book1 = new Book(1, 'book1', 22);
  Book book2 = new Book(2, 'book2', 33);
  var box = book1 + book2;
  box.printListItems();
  print('*' * 30);
  box + Magazin(3, 'Dart best', 44);
  box.printListItems();

  //Box box = new Box();
}
