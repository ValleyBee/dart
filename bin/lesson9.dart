// ignore_for_file: unnecessary_this

void main(List<String> args) {
  var deck = new Deck();

//  deck.shuffle();
//  print(deck.cardsWithSuit('Spades'));
  print(deck);
  print('');
  deck.removeWhere('Ace', 'Hearts');
  print('');
  print(deck);

  // print('FIRST DEAL');
  // print(deck.deal(5));
  // print('-' * 30);
  // print(deck);

  // print('');
  // print('SECOND DEAL');
  // print(deck.deal(5));
  // print('-' * 30);
  // print(deck);

  // print('');
  // print('THIRD DEAL');
  // print(deck.deal(5));
  // print('-' * 30);
  // print(deck);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var rank in ranks) {
      for (var suit in suits) {
        Card card = new Card(rank: rank, suit: suit);

        cards.add(card);
      }
    }
  }

  // void printInfo() {
  //   cards.forEach((element) {
  //     print(element.rank + ' of ' + element.suit);
  //   });
  // }

  @override
  String toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  void removeWhere(String rank, String suit) {
    cards.removeWhere((element) {
      return (element.rank == rank) && (element.suit == suit);
    }); // returns true or false depens of condition ( a == b) to the Function removeWhere
  }

  List<Card> deal(int handSize) {
    List<Card> hand = cards.sublist(0, handSize); // var hand can be as dynamic type
    cards = cards.sublist(handSize);
    return hand;
  }

  Iterable<Card> cardsWithSuit(String suit) {
    Iterable<Card> result = cards.where((element) {
      return element.suit == suit;
    });
    return result;
  }

  /*
  Short way I  cardsWithSuit()
  return cards.where((element) { return element.suit == suit;}  // bool
  
  Short way II cardsWithSuit()
  var result = cards.where((element) { return element.suit == suit;}  // dynamic type for result
    return result;

  Short way II cardsWithSuit()
  return cards.where((element) => element.suit == suit);  // => it called (Explicit return ) returns the value to the privious Function. use it when only one expresion have


  */

}

class Card {
  late String suit;
  late String rank;

  Card({required String rank, required String suit}) {
    this.rank = rank;
    this.suit = suit;
  }

  @override
  String toString() {
    return '$rank of $suit';
  }
}
