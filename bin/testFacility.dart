import 'dart:convert';
import 'package:latlong2/latlong.dart';

typedef jsonType = Map<String, double>;

extension FromToJson on LatLng {
  Map<String, double> toJson() {
    return {'latitude': latitude as double, 'longitude': longitude as double};
  }
}

// LatLng fromJson(jsonType data) {
//   return LatLng(data['longitue'] as double, data['latitude'] as double);
// }

class MyID {
  late final int id;
  late final String idString;
  // MyID(this.id) : idString = id.toString();
  MyID(int id) {
    this.id = id;
    this.idString = id.toString();
  }
}

class Product<T> {
  late T id;
  late final String name;
  late double price;

  Product(this.id, this.name, this.price);
  T getId() {
    return id;
  }

  void setId(T newId) => id = newId;
}

void main(List<String> args) {
  LatLng position = LatLng(22.22, 55.555);
  var json = (position.toJson());
  print(json); //               {latitude: 33.333, longitude: 55.555}
  print(jsonEncode(json)); // to string {"latitude":33.333,"longitude":55.555}
  var json2 = jsonEncode(json);
  print(jsonDecode(json2));
  //print(fromJson(json));

  Product productIntId = new Product<int>(2, "book", 22.90);
  Product productMyId = new Product<MyID>(MyID(2), 'latter', 3);
  print(productIntId);
  print(productMyId);
}
