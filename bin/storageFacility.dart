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
  Box(this.weightLimitBox);

  List<Item> itemList = [];
  late final double weightLimitBox;

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
    for (var item in itemList) {
      weightLimitBox = weightLimitBox + item.weight;
    }
    return weightLimitBox;
  }
}

void main(List<String> args) {
  Box box = new Box(18);
  StorageFacilitySystem storageFacilitySystem = box;
  storageFacilitySystem.addItem(Item('book', 2));
  storageFacilitySystem.addItem(Item('magazin', 1));
}
