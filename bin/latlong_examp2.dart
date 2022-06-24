import 'package:latlong2/latlong.dart';

// type aliases
typedef json = Map<String, double>;

extension JsonPosition on LatLng {
  json toJson() => {'latitude': latitude, 'longitude': longitude};

  LatLng fromJson(json data) {
    return LatLng(data['latitude'] as double, data['longitude'] as double);
  }

  void fronJson2(json data) {
    latitude = data['latitude'] as double;
    longitude = data['longitude'] as double;
  }
}

// import 'latlong_convert.dart';

// 49.8397° N, 24.0297° E
void main(List<String> args) {}
