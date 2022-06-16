// Rule of importation Libs
// 1st import Core lib, dart:
// 2ns import Packages lib, package:
// 3rd import Own lib

import 'src/calc_lib.dart';

/* 
import 'src/calc_lib copy.dart';   Import Error,
method is already defined in the other libraries. 
to fix it we can give an alias name, use operator 'as' see next line:
*/

import 'src/calc_lib_private.dart' as newcalclib;

// import 'src/calc_lib_private.dart' as newcalclib show add,sub;   SHOW only assign methods
// import 'src/calc_lib_private.dart' as newcalclib hide div,mul;   HIDE

void main(List<String> args) {
// methods from own lib calc_dart
  print(add(2.1, 2));
  print(sub(2.5, 2));
  print(div(2.1, 2));
  print(mul(2, 2));
  print(powMy(2.1, 2));

// call method which calls another method _add(a + b) * 10)) has private modifier in own lib calc_lib_private

  print(newcalclib.add(2, 2));
}
