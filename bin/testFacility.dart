class Item {
  late int itemId;
  late String itemName;
  late double itemWeight;
  Item(this.itemId, this.itemName, this.itemWeight);
}

abstract class StorageSystem {
  int a = 0;
  void addItem(Item item);
  void removeItem(int itemId);
  double totalWeight();
}

class Box extends StorageSystem {
  final double _capacity = 23.50;
  List<Item> box = [];

  @override
  void addItem(Item item) {
    if (item.itemWeight + totalWeight() <= _capacity) {
      box.add(item);
      print('item `${item.itemName}` add success');
    } else {
      print('item `${item.itemName}` is too big can`t add');
    }
  }

  @override
  double totalWeight() {
    double result = 0;
    for (Item item in box) {
      result += item.itemWeight;
    }
    return result;
  }

  @override
  void removeItem(int itemId) {
    for (Item item in box) {
      if (item.itemId == itemId) {
        box.remove(item);
        print('item `${item.itemId} ${item.itemName}` has been remobved');
        return;
      }
    }
  }

  void listItems() {
    box.forEach((element) {
      print('${element.itemId} ${element.itemName}');
    });
  }
}

void main(List<String> args) {
  Box smallBox = new Box();
  StorageSystem storage = smallBox;
  storage.addItem(new Item(1, 'book', 1.5));
  storage.addItem(new Item(2, 'letter', 0.5));
  storage.addItem(new Item(3, 'magazin', 1.0));
  storage.removeItem(2);
  storage.addItem(new Item(4, 'letter2', 0.5));

  smallBox.listItems();
}
