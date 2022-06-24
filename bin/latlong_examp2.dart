import 'package:latlong2/latlong.dart';

// json type aliases
typedef json = Map<String, double>;

extension JsonPosition on LatLng {
  /* json type aliases */

  json _toJson() =>
      {'latitude': latitude, 'longitude': longitude}; /*  method from Map() to Json format */

  LatLng _fromJson(json data) {
    return new LatLng(
        data['latitude'] as double, data['longitude'] as double); /*  method from Json format to */
  }

  void fromJsonChange(json data) {
    latitude = data['latitude'] as double;
    longitude = data['longitude'] as double;
  }
}

// import 'latlong_convert.dart';

// 49.8397° N, 24.0297° E
void main(List<String> args) {
  LatLng originPosition = new LatLng(23.333, 44.333);
  //originPosition._fromJson('latitude': 49.8397,'longitude': 333);
  json pos = originPosition._toJson();
  print(pos);
  print(originPosition);

  LatLng pos2 = originPosition._fromJson(pos);

  print(pos2);
}
