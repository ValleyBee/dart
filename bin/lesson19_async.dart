// Coffee Machine
import 'dart:async';

import 'package:test/expect.dart';

class CoinReceiver {
  final StreamController<int> _addCoin = new StreamController<int>(); // Create a new stream

  Stream<int> get dataStream => _addCoin.stream;

  void addCoin(int coin) => _addCoin.add(coin);
}

class Coin {
  final int value;
  Coin(this.value);
}

class CofeeMachine {
  int coinValue = 0;

  CofeeMachine(Stream<int> stream) {
    stream.listen(addCoin);
  }

  void addCoin(int coin) {
    coinValue += coin;
    print('add coins: $coin total coins $coinValue');
    if (coinValue >= 30) {
      print('preraring your coffee...');
      print('Your coffee is ready!');
    }
  }
}

void main(List<String> args) {
  print('start main');
  print('*' * 30);
  CoinReceiver coinreceiver = new CoinReceiver();
  CofeeMachine cofeemachine = new CofeeMachine(coinreceiver.dataStream);

  coinreceiver.addCoin(5);
  coinreceiver.addCoin(10);
  coinreceiver.addCoin(16);

  print('finish main');
  f();
}

void f() {
  print('*' * 30);
}
