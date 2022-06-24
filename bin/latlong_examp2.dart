import 'dart:convert';

import 'package:latlong2/latlong.dart';
import 'latlong_convert.dart';

// 49.8397° N, 24.0297° E
void main(List<String> args) {
  LatLng positions = new LatLng(49.8397, 24.0297);

  Map json3 = positions._toJson(); // call a new method which we extensed

  print(jsonEncode(json3));
}
