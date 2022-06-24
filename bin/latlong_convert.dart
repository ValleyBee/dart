import 'dart:convert';

import 'package:latlong2/latlong.dart';

extension JsonPosition on LatLng {
  Map<String, double> _toJson() => {'latitude': latitude, 'longitude': longitude};
}

void main(List<String> args) {
  // Creating an instance of class LatLng which was extended
  LatLng position = new LatLng(49.8397, 24.0297);
  Map<String, double> json = position._toJson(); // {latitude: 49.8397, longitude: 24.0297}

  // same as above. Creating an instance of extension JsonPosition call "constuctor" of LatLng
  Map<String, double> json2 = JsonPosition(new LatLng(49.8397, 24.0297))._toJson();

  print(json);
  print(jsonEncode(json)); // {"latitude":49.8397,"longitude":24.0297}  JSON FORMAT
  print(jsonEncode(json2));
}
