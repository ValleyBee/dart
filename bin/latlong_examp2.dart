import 'package:latlong2/latlong.dart';
import 'package:test/expect.dart';

// json type aliases
typedef json = Map<String, double>;

extension JsonPosition on LatLng {
  /* json type aliases */

  json _toJson() =>
      {'latitude': latitude, 'longitude': longitude}; /*  method from instanse Object Map() */

  LatLng _fromJson(json data) {
    /*method create an instanse of Class from json Map()*/
    return new LatLng(data['latitude'] as double, data['longitude-'] as double);
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
  print('ref.loc. var originPosition, value: $originPosition');
  json pos = originPosition._toJson(); // {latitude: 23.333, longitude: 44.333}

  print('-- ' * 20);
  print('ref.loc. var pos, value before change: $pos');
  print('-- ' * 20);
  pos['latitude'] = 77.777; // change latitude
  print('pos, value lat after changed: $pos'); // Map({})
  print('-- ' * 20);
  print('originPosition, value before change: $originPosition');
  print('-- ' * 20);

  originPosition.fromJsonChange(pos); // change originalPosition of latitude
  print('originPosition value after change: $originPosition');

  // LatLng pos2 = originPosition._fromJson(pos);
  print('-- ' * 20);
  print(originPosition.runtimeType);
  print(pos.runtimeType);
}
