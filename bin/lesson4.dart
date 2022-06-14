// FUNCTIONS

/* 
    1st  ()
    2nd  *, /, %
    3rd  +, -
    */

void main(List<String> args) {
// example I call regular Functon
  print('E X A M P L E - I call regular Functon');
  void printValue(int value) {
    print(value);
  }

  var list = [1, 2, 3, 4];
  list.forEach(printValue);
  print('\n');

// example II call Annonymus Function

  print('E X A M P L E - I call Annonymus Functon');
  int total(int a, int b) {
    return a + b;
  } // regular Function

  total2(int a, int b) {
    return a + b;
  } // Annonymus Fanction

  print('E X A M P L E - II_1 call Annonymus Function');
  list.forEach((value) {
    print(value);
  });

  print('E X A M P L E - II_2 call Annonymus Function');
  list.forEach((value) {
    print('index of value = ${list.indexOf(value)}: $value');
  });

  print('\n');

// example III call Annonymus Function with Lambda
  print('E X A M P L E - III call Lambda ');
  list.forEach((list) => print(list));

// Lexical scope
// example IV netsted Function
  print('E X A M P L E - IV netsted Function(Lexical scope)');

  var insideMain = true;

  void myFunction() {
    var insideFunction = false;
//assert(insideFunction,'the varaible is false');

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction, 'false');
      assert(insideNestedFunction);
    }
  }

// call
  myFunction();

  print('E X A M P L E - Function Lexical Closure)');
  Function addFunction(int add) {
    return (int i) => add + i;
  }

  var add2 = addFunction(2);
  var add4 = addFunction(4);

  print(add2(3)); // put args to inside (int i)

  print('E X A M P L E - V netsted Function and Lexical Closure scope)');

  Function outerFunction(int out) {
    // Lexical scope begins here

    int innerFunction(int inner) {
      return out + inner;
    }

    return innerFunction;
  } // Lexical scope ends here

// returns the value of the inner function but not the ineer function

  var result = outerFunction(11); // put arg to outter function
  void addToOutter() {
    result(3);
  }

  print('result netsted Function,result: ${result(5)})'); // put args to inner function

  print('------------------------------------------------------------------');
  print('E X A M P L E - MICROWAVE factory - Function Closure');

  int index_microwave = 0;
  Function factory(String name_microwavem, int power) {
    String model = '$name_microwavem-BOSCH-777 index = $index_microwave';
    index_microwave++;

    // Anonymous Function wraps in return(){}
    return (String dish, int mode) {
      StringBuffer myStr = StringBuffer('Microwave model "$model" it`s Power = $power Watt');
      myStr.write(',warm a meal "$dish" in mode = $mode');
      return myStr;
    };
  }

  Function microwave = factory('Siemens', 850);
  print(microwave('Spagetty', 3));
// in return of factory Function we wrap a Anonymous Function.

  print('------------------------------------------------------------------');
  print('E X A M P L E - Recursive Function Lexical scope. number of fibonacci');

  int fibonacci(int number) {
    // 0 1 1 2 3 5 8 13 21 34 55

    if (number < 2) {
      print('fib_if = $number');
      return number;
    }

    print('F(n-1)= ${(number - 1)} F(n-2) = ${(number - 2)}');

    return fibonacci(number - 1) + fibonacci(number - 2);
  }

  var result_fib = fibonacci(7);
  print('result fib by if esle = $result_fib');

  int fib(int n) {
    if (n < 2) {
      return n;
    }
    return (n == 1) ? 1 : fib(n - 1) + fib(n - 2);
  }

  print('\n');
//print(DateTime.now().microsecond);
  int result_fib_ternary = fib(7);
  print('result fib by ternary = $result_fib_ternary');

  print('\n');

// Functions as first-class objects.  pass a function as a parameter to another function
  print('E X A M P L E - VII callback Function');

// assing  function to a varaible

  var bigLetter = (msg) {
    return msg.toUpperCase();
  };
  Function bigLetter2 = (msg) => msg.toUpperCase();
  Function bigLetter3 = (msg) => ' !!! ${msg.toUpperCase()} !!!';

  print(bigLetter('hello'));
  print(bigLetter2('welcome'));
  print(bigLetter3('victory'));

  int sum(int a, int b) {
    return a + b;
  }

  doWork(sum);

//  pass Annonymus function as argument
  doWork((int a, int b) {
    return a + b * 4;
  });

// pass Annonymus function(lambda expression) as argument
  doWork((int a, int b) => a + b * a * b);

  print('${bigLetter.runtimeType}');

  print('E X A M P L E - VIII typedef Function - Fat Arrow Notation');
  print(sub(1, 1, 2, add));
} // end of MAIN

// typedef Function
typedef int MyFunctionAdd(int a, int b);

int sub(int c, int a, int b, MyFunctionAdd func) {
  return c - func(a, b);
}

int add(int a, int b) => a + b;

// void doWork(Function() callback)  without type it is bad practis,assign type
void doWork(int Function(int, int) callback) {
  var resutl = callback(1, 2);
  print('result direct callback: ${callback(2, 3)}');
  print('result callback:  $resutl');
}

bool topLevel = true;
