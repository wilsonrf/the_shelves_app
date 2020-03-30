import 'package:the_shelves_app/common/representation.dart';

class Store implements Representation {
  
  String id;
  String name;
  double latitude;
  double longitude;
  String createdAt;

  Store({this.id, this.name, this.latitude, this.longitude, this.createdAt});

  Store.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    latitude = json['latitude'] as double;
    longitude = json['longitude'] as double;
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> _toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['createdAt'] = this.createdAt;
    return data;
  }

  @override
  String get embeddedName => "storeRepresentationList";

  @override
  Representation deserialize(Map<String, dynamic> json) {
    return Store.fromJson(json);
  }

  @override
  Map<String, dynamic> serialize() {
    return _toJson();
  }

}
