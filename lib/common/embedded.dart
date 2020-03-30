import 'package:the_shelves_app/common/representation.dart';

class Embedded {
  
  List representationList;

  Embedded({this.representationList});

  Embedded.fromJson(Map<String, dynamic> json) {

    if (json['storeRepresentationList'] != null) {
      
      representationList = new List();

      json.keys.forEach((key) {
        
        json['$key'].forEach((v) {
          final representation = Representation(key);
          representationList.add(representation.deserialize(v));
        });
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.representationList != null) {
      data['storeRepresentationList'] = this.representationList.map((v) => v.toJson()).toList();
    }
    return data;
  }
  
}