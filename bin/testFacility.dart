class Item {
  late int id;
  late String name;
  late double weight;

  // Item(this.id, this.name, this.weight);
  Item(int id, String name, double weight) {
    this.name = name;
    this.weight = weight;
    this.id = id;
  }
}

abstract class StorageFacilitySystem {
  void addItem(Item item);
  double totalWeight();
}

class Box extends StorageFacilitySystem {
  final double boxCapacity = 23.5;
  List<Item> box = [];

  @override
  void addItem(Item item) {
    if (totalWeight() + item.weight <= boxCapacity) {
      box.add(item);
      print('${item.id} ${item.name} add to storage Box');
    } else {
      print('Box is full or the item `${item.name}` is too big');
    }
  }

  @override
  double totalWeight() {
    double total = 0;
    box.forEach((element) {
      total += element.weight;
    });
    return total;
  }

  int idN() {
    return box.length + 1;
  }
}

class BigBox extends StorageFacilitySystem {
  final double boxCapacity = 230.50;
  List<Item> bigBox = [];
  @override
  void addItem(Item item) {
    bigBox.add(item);
    print('${item.id} ${item.name} add to storage bigBox');
  }

  @override
  double totalWeight() {
    return 2;
  }

  int idN() {
    return bigBox.length + 1;
  }
}

void main(List<String> args) {
  Box box = new Box();
  BigBox bigBox = new BigBox();
  StorageFacilitySystem storage = box;

  storage.addItem(new Item(box.idN(), 'book', 2.0));
  storage.addItem(new Item(box.idN(), 'magazin', 1.0));

  storage.addItem(new Item(box.idN(), 'fast folder', 20.1));
  storage.addItem(new Item(box.idN(), 'fileds holder', 0.4));

  storage = bigBox;
  storage.addItem(new Item(bigBox.idN(), 'set of books', 20.0));
  storage.addItem(new Item(bigBox.idN(), 'set of magazin', 15.0));

  print(box.totalWeight());
}
