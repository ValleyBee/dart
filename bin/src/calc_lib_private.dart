import 'dart:math';

// Creating own lib
double add(double a, double b) => _add(a, b);
double sub(double a, double b) => a - b;
double div(double a, double b) => a / b;
double mul(double a, double b) => a * b;

// make a func _private access modifier it can be call only here
double _add(double a, double b) => ((a + b) * 10);
