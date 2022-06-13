void main(List<String> args) {
  Deck deck = new Deck();
  print(new Deck().deal(10));

  // print(deck);
  // print('');
  // deck.shuffle();
  // print('');
  // print(deck);
  print('---------------List cards');
  print(deck);
  print('--------------FIND ALL WITH suit');
  print(deck.cardsWithSuit('Hearts'));

  // print(deck.deal(5));
  print('--------------REMOVE with suit');
  deck.removeCard('Hearts');
  print('--------------List cards');
  print(deck);
  print('--------------FIND ALL WITH suit');
  print(deck.cardsWithSuit('Hearts'));
}

class Deck {
  List<Card> cards = [];
  Deck() {
    List<String> ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    List<String> suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (String rank in ranks) {
      for (String suit in suits) {
        // Card card = new Card(rank, suit);
        // cards.add(card);

        cards.add(new Card(rank, suit));
      }
    } //end if
  }
  @override
  String toString() {
    return cards.toString();
  }

  void shuffle() {
    cards.shuffle();
  }

  Iterable<Card> cardsWithSuit(String suits) {
    Iterable<Card> result = cards.where((element) => element.suit == suits);
    return result;
  }

  List<Card> deal(int end) {
    List<Card> card = cards.sublist(0, end);
    cards = cards.sublist(end);
    return card;
  }

  void removeCard(String card) {
    cards.removeWhere((element) => element.suit == card);
  }
}

class Card {
  String rank;
  String suit;

  Card(this.rank, this.suit);

  @override
  String toString() {
    return ('$rank of $suit');
  }
}
