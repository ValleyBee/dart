import 'dart:async';

abstract class Coffee {
  void event(Item item);
}

class CoffeeBox extends Coffee {
  List<Item> itemList = [];
  @override
  void event(Item item) {
    if (item.name == 'paper') {
      print('received money: ${item.name.toString().toUpperCase()} among: ${item.qtty}');
      itemList.add(item);
    } else if (item.name == 'coin') {
      print('received money: ${item.name.toString().toUpperCase()} among: ${item.qtty}');
      itemList.add(item);
    }
    print(item.runtimeType);
  }

  // Create a new stream
  // Map<String, int> item = ({});
  // List<CoffeeMachine> listItems = [];

}

class CoffeTable extends Coffee {
  List<Item> itemList = [];
  @override
  void event(Item item) {
    if (item.name == 'paper') {
      print('received money: ${item.name.toString().toUpperCase()} among: ${item.qtty}');
      itemList.add(item);
    } else if (item.name == 'coin') {
      print('received money: ${item.name.toString().toUpperCase()} among: ${item.qtty}');
      itemList.add(item);
    }
    print(item.runtimeType);
  }
}

void main(List<String> args) {
  StreamController controller = new StreamController();
  Stream stream = controller.stream;

  CoffeeBox coffeebox = CoffeeBox();
  CoffeTable coffetable = CoffeTable();
  Coffee coffee = coffeebox;

  coffee.event(new Item(name: "paper", qtty: 10));
  controller.add(coffee);
  coffee.event(new Item(name: "coin", qtty: 20));
  controller.add(coffee);

  coffee.event(new Item(name: "paper", qtty: 15));
  coffee = coffetable;

  controller.add(coffee);

  // StreamSubscription subscription = stream.listen((Coffee) {
  //   print('Listening to: $Coffee');
  // });

  StreamSubscription subscription = controller.stream.listen((Coffee) {
    print('Listening to: $Coffee');
  });

  //await Future.delayed(Duration(milliseconds: 500));

  //subscription.cancel();
}

class Item extends Coffee {
  late String? name;
  late int? qtty;
  Item({this.name, this.qtty});
  @override
  void event(Item item) {}
}
