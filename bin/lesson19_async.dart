import 'dart:async';

class CoinReceiver {
  final _addCoin = StreamController<int>();
  Stream<int> get dataStream => _addCoin.stream;
  void addCoin(int coin) => _addCoin.add(coin);
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
  CoinReceiver coinreceiver = new CoinReceiver();
  CofeeMachine cofeemachine = new CofeeMachine(coinreceiver.dataStream);
  coinreceiver.addCoin(5);
  coinreceiver.addCoin(10);
  coinreceiver.addCoin(16);
  print('finish main');
}
