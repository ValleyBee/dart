import 'package:latlong2/latlong.dart';

// json type aliases
typedef json = Map<String, double>;

extension JsonPosition on LatLng {
  /* json type aliases */

  json _toJson() =>
      {'latitude': latitude, 'longitude': longitude}; /*  method from Map() to Json format */

  LatLng _fromJson(json data) {
    return new LatLng(data['latitude'] as double,
        data['longitude-'] as double); /*  method from Map() format to Object of class type */
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
  json pos = originPosition._toJson(); // Map({})
  print('originPosition as Object: $originPosition');
  print('local var pos before change: $pos'); // Map({})
  pos['latitude'] = 77.777; // change latitude of
  print('var pos after change: $pos'); // Map({})
  print('originPosition as Object before change: $originPosition');
  originPosition.fromJsonChange(pos); // change originalPosition of latitude
  print('originPosition as Object after change: $originPosition');

  // LatLng pos2 = originPosition._fromJson(pos);
}
