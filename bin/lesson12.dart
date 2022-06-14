import 'dart:math';

// FUNCTIONS EXMPS
void main(List<String> args) {
  print('E X A M P L E - MICROWAVE factory - Function Closure');

  int index_microwave = 0;
  Function factory(String name_microwavem, int power) {
    String model = '$name_microwavem- idx = $index_microwave';
    index_microwave++;

    // Anonymous Function wraps in return(){}
    return (String dish, int mode) {
      StringBuffer myStr = StringBuffer('Microwave = "$model" Power = $power Watt');
      myStr.write(',warm a meal "$dish" in mode = $mode');
      return myStr;
    };
  }

  Function microwave = factory('Siemens RX800', 850);
  print(microwave('Spagetty', 3));
  print(microwave('Potato salad', 2));
// plus one microwave
  Function newMicrowave = factory('BOCSH-1k', 1000);
  print(newMicrowave('marshmallow soup', 1));

// in return of factory Function we wrap a Anonymous Function.
  print('------------------------------------------------------------------');
}
