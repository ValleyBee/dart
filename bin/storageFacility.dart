// Example of use Abstract class as interface and Implimentation it
class Item {
  late int itemId;
  late final String itemName;
  late double itemWeight;
  Item(this.itemId, this.itemName, this.itemWeight);
}

// Interface
abstract class StorageFacilitySystem {
  void addItem(Item item);
  double facilityWeight();
  void removeItem(int itemId);
}

// BOX
class Box implements StorageFacilitySystem {
  late final double weightLimitBox;
  Box(this.weightLimitBox);
  List<Item> itemList = [];

  @override
  void addItem(Item item) {
    double currentFacilityWeight = facilityWeight();
    if ((currentFacilityWeight + item.itemWeight) < weightLimitBox) {
      itemList.add(item);
      print('${item.itemName} added successfully');
    } else {
      print('${item.itemName} too big');
    }
  }

  @override
  double facilityWeight() {
    double totalBoxWeight = 0;
    for (var item in itemList) {
      totalBoxWeight = totalBoxWeight + item.itemWeight;
    }
    return totalBoxWeight;
  }

  @override
  void removeItem(int itemId) {
    for (Item item in itemList) {
      if (item.itemId == itemId) {
        itemList.remove(item);
        print('item `${item.itemId} ${item.itemName}` has been remobved');
        return;
      }
    }
  }
}
//END BOX

// Big Box

class BigBox implements StorageFacilitySystem {
  late final double weightLimitBigBox;
  BigBox(this.weightLimitBigBox);
  List<Item> itemList = [];

  @override
  void addItem(Item item) {
    double currentFacilityWeight = facilityWeight();
    if ((currentFacilityWeight + item.itemWeight) < weightLimitBigBox) {
      itemList.add(item);
      print('${item.itemName} added successfully');
    } else {
      print('${item.itemName} too big');
    }
  }

  @override
  double facilityWeight() {
    double totalBoxWeight = 0;
    for (var item in itemList) {
      totalBoxWeight = totalBoxWeight + item.itemWeight;
    }
    return totalBoxWeight;
  }

  @override
  void removeItem(int itemId) {
    for (Item item in itemList) {
      if (item.itemId == itemId) {
        itemList.remove(item);
        print('item `${item.itemId} ${item.itemName}` has been remobved');
        return;
      }
    }
  }
}

void main(List<String> args) {
  Box box = new Box(23.00); // capacity
  StorageFacilitySystem storageFacilitySystem = box;
  // Item item = new Item('test', 11);
  // storageFacilitySystem.addItem(item);
  storageFacilitySystem.addItem(new Item(1, 'Book', 2));
  storageFacilitySystem.addItem(new Item(2, 'Magazin', 1));
  storageFacilitySystem.addItem(new Item(3, 'Letters', 1));
  storageFacilitySystem.addItem(new Item(2, 'Documents', 3));

  BigBox bigBox = new BigBox(45.00); // capacity
  storageFacilitySystem = bigBox;
  storageFacilitySystem.addItem(new Item(1, 'Sets of Books', 20));
  storageFacilitySystem.addItem(new Item(2, 'Sets of Magazins', 15));
  storageFacilitySystem.addItem(new Item(2, 'Sets of Documents', 5));

  // TotalWeight method
  double totalWeight(StorageFacilitySystem storage) {
    double totalWeight;
    storageFacilitySystem = storage;
    totalWeight = storageFacilitySystem.facilityWeight();
    return totalWeight;
  }

  print(totalWeight(box));
  print(totalWeight(bigBox));

  box.removeItem(1);
  print(totalWeight(box));
}
