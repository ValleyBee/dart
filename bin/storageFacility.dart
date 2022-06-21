class Item {
  late final String name;
  late double weight;
  Item(this.name, this.weight);
}

abstract class StorageFacilitySystem {
  void addItem(Item item);
  double facilityWeight();
}

class Box implements StorageFacilitySystem {
  late final double weightLimitBox;
  Box(this.weightLimitBox);
  List<Item> itemList = [];

  @override
  void addItem(Item item) {
    double currentFacilityWeight = facilityWeight();
    if ((currentFacilityWeight + item.weight) < weightLimitBox) {
      itemList.add(item);
      print('item add successfully');
    } else {
      print('item is too big');
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
  Box box = new Box(18.00);
  StorageFacilitySystem storageFacilitySystem = box;
  storageFacilitySystem.addItem(Item('book', 2));
  storageFacilitySystem.addItem(Item('magazin', 1));
  double totalWeight = storageFacilitySystem.facilityWeight();
  print(totalWeight);
}
