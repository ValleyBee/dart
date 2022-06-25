import 'dart:async';

import 'package:latlong2/latlong.dart';
import 'package:test/expect.dart';

// json type aliases
typedef json = Map<String, double>;

extension JsonPosition on LatLng {
  /* json type aliases */
/* method from instanse Object to Map() */
  json _toJson() => {'latitude': latitude, 'longitude': longitude};

/*method form from Map() to instance Object */
  LatLng _fromJson(json data) {
    return new LatLng(data['latitude'] as double, data['longitude'] as double);
  }

  void _fromJsonChange(json data) {
    latitude = data['latitude'] as double;
    longitude = data['longitude'] as double;
  }
}

// import 'latlong_convert.dart';

// 49.8397° N, 24.0297° E
void main(List<String> args) {
  LatLng originPosition = new LatLng(23.333, 44.333);

  Map<String, double> newCoordinats = {'latitude': 22.22, 'longitude': 44.44};

  json pos = originPosition._toJson(); //convert Obj to Map({})
  print('-- ' * 20);
  print('ref.loc. var pos, convert Obj to Map  : $pos');
  print('-- ' * 20);
  pos['latitude'] = 77.777; // change only value latitude
  print('pos, value `latitude` changed: $pos');
  print('-- ' * 20);
  print('ref.loc.var Obj originPosition,value: $originPosition');
  print('-- ' * 20);

  originPosition._fromJsonChange(pos); // change originalPosition only value latitude
  originPosition._fromJsonChange(newCoordinats); // change all

  print('Obj originPosition, value after change: $originPosition');
  print('-- ' * 20);

  // LatLng pos2 = originPosition._fromJson(pos);
  print('-- ' * 20);
  print(originPosition.runtimeType); // check type var
  print(pos.runtimeType);
}
