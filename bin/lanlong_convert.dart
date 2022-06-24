import 'package:latlong2/latlong.dart';

extension JsonPosition on LatLng {
  Map<String, dynamic> toJson() => {'latitude': latitude, 'longitude': longitude};
}
