import 'package:latlong2/latlong.dart';

// json type aliases
typedef json = Map<String, double>;

extension JsonPosition on LatLng {
  /* json type aliases */

  json _toJson() =>
      {'latitude': latitude, 'longitude': longitude}; /*  method from Map() to Json format */

  LatLng _fromJson(json data) {
    return new LatLng(data['latitude'] as double,
        data['longitude-'] as double); /*  method from Map() format to instanse  of class  */
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
  json pos =
      originPosition._toJson(); // Objec to Map({}) format {latitude: 23.333, longitude: 44.333}
  print(
      'ref var type Class originPosition value: $originPosition'); // LatLng(latitude:23.333, longitude:44.333)
  print('ref var pos type Map<> value before change: $pos');
  pos['latitude'] = 77.777; // change latitude
  print('pos value lat after changed: $pos'); // Map({})
  print('ref var type Class originPosition value before change: $originPosition');

  originPosition.fromJsonChange(pos); // change originalPosition of latitude
  print('originPosition value after change: $originPosition');

  // LatLng pos2 = originPosition._fromJson(pos);
}
