// SWITCH
import 'dart:io';

void main(List<String> args) {
  print('Enter an integer:');

  // String? s = stdin.readLineSync();
  var s = stdin.readLineSync();

  if (s != null) {
    if (int.tryParse(s) == null) {
      print('Only Integer is allowed $s');
    } else {
      int n = int.parse(s);
      if (n.isNegative) {
        print('number is Negativ');
      } else {
        print('your number: $n');
      }
    }
  }

  print('input a String: one,two or three');

  var str = stdin.readLineSync();

  void sw4(String? s) {
    switch (s) {
      case 'one':
        print('one-one');
        continue label1;
      case 'two':
        print('two-two');
        continue label1;
      case 'three':
        print('three-three');
        continue label1;
      label1:
      case 'quit':
        print('going out');
        break;
      default:
        print('unknown');
    }
  }

  sw4(str);
}
