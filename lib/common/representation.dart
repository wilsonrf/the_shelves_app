import 'package:the_shelves_app/stores/store.dart';

abstract class Representation {

  String get embeddedName;

  factory Representation(String embeddedName) {
    if (embeddedName == "storeRepresentationList") return Store();
    throw 'Can\'t create $embeddedName.';
  }

  Representation deserialize(Map<String, dynamic> json);

  Map<String, dynamic> serialize();
}