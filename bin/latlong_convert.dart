import 'dart:convert';

import 'package:latlong2/latlong.dart';

extension JsonPosition on LatLng {
  Map<String, double> toJson() => {'latitude': latitude, 'longitude': longitude};
}

void main(List<String> args) {
  // Creating an instance of class LatLng which was extended
  LatLng position = new LatLng(59.3333, 34.2222);
  Map json = position.toJson();

  // same as above. Creating an instance of extension JsonPosition call "constuctor" of LatLng
  Map json2 = JsonPosition(new LatLng(59.3333, 34.3333)).toJson();

  print(jsonEncode(json));
  print(jsonEncode(json2));
}
