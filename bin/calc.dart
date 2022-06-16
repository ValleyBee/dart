import 'src/calc_lib.dart';

/* 

import 'src/calc_lib copy.dart';   Import Error,

method is already defined in the other libraries. 
to fix it we can give an alias name, use operator 'as' see next line:

*/

import 'src/calc_lib_private.dart' as newcalclib;

void main(List<String> args) {
// methods from own lib calc_dart
  print(add(2.1, 2));
  print(sub(2.5, 2));
  print(div(2.1, 2));
  print(mul(2, 2));
  print(powMy(2.1, 2));

// methods from own lib  calc_lib_private
  print(newcalclib.add(2, 2));
}
