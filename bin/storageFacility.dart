// Example of use Abstract class as interface and Implimentation it
class Item {
  late final String name;
  late double weight;
  Item(this.name, this.weight);
}

abstract class StorageFacilitySystem {
  void addItem(Item item);
  double facilityWeight();
}

// BOX
class Box implements StorageFacilitySystem {
  late final double weightLimitBox;
  Box(this.weightLimitBox);
  List<Item> itemList = [];

  @override
  void addItem(Item item) {
    double currentFacilityWeight = facilityWeight();
    if ((currentFacilityWeight + item.weight) < weightLimitBox) {
      itemList.add(item);
      print('${item.name} added successfully');
    } else {
      print('${item.name} too big');
    }
  }

  @override
  double facilityWeight() {
    double totalBoxWeight = 0;
    for (var item in itemList) {
      totalBoxWeight = totalBoxWeight + item.weight;
    }
    return totalBoxWeight;
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
    if ((currentFacilityWeight + item.weight) < weightLimitBigBox) {
      itemList.add(item);
      print('${item.name} added successfully');
    } else {
      print('${item.name} too big');
    }
  }

  @override
  double facilityWeight() {
    double totalBoxWeight = 0;
    for (var item in itemList) {
      totalBoxWeight = totalBoxWeight + item.weight;
    }
    return totalBoxWeight;
  }
}

void main(List<String> args) {
  Box box = new Box(23.00); // capacity
  StorageFacilitySystem storageFacilitySystem = box;

  storageFacilitySystem.addItem(Item('Book', 2));
  storageFacilitySystem.addItem(Item('Magazin', 1));

  BigBox bigBox = new BigBox(45.00); // capacity
  storageFacilitySystem = bigBox;
  storageFacilitySystem.addItem(Item('Sets of Books', 20));
  storageFacilitySystem.addItem(Item('Sets of Magazins', 15));

  // TotalWeight method
  double totalWeight(StorageFacilitySystem storage) {
    double totalWeight;
    storageFacilitySystem = storage;
    totalWeight = storageFacilitySystem.facilityWeight();
    return totalWeight;
  }

  print(totalWeight(box));
  print(totalWeight(bigBox));
}
