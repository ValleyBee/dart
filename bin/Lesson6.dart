import 'dart:math';

void main(List<String> args) {
  final minus = Decrement(1);
  final plus = Increment(1);

//final type = shapeFactoty('increase');
  final increase = Shape('increase');
  final decrease = Shape('decrease');
//print(minus.sum);
  print('increaseSum: ${increase.sum}');
  print(decrease.sum);
  print(minus.sum);
}

abstract class Shape {
  factory Shape(String type) {
    if (type == 'increase') return Increment(2);
    if (type == 'decrease') return Decrement(2);
    throw ('can not do with type $type');
  }
  num get sum;
}

class Increment implements Shape {
  final num i;

  Increment(this.i);

  num get sum {
    return pi + i;
  }
}

class Decrement implements Shape {
  final num d;

  Decrement(this.d);

  num get sum => pi - d;

  @override
  String toString() => ('result of minus $sum $d');
}



// Shape shapeFactoty(String type){
//   if ( type == 'increase') return Increment(2); 
//   if ( type == 'decrease') return Decrement(2);
//   return throw('can`t do with type $type');
// }
