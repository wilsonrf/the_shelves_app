
import 'dart:convert';

import 'package:the_shelves_app/common/hal_collection.dart';
import 'package:http/http.dart' as http;

Future<HalCollection> fetchStores() async {

  final url = "http://10.0.2.2:8080/the-shelves/v1/stores?lat=49.903195&long=10.868665";
  
  final response = await http.get(url);

  if (response.statusCode == 200) {

    final jsonResponse = json.decode(response.body);

    final halColection = HalCollection.fromJson(jsonResponse);

    return halColection;

  } else {
    throw 'Can\'t fetch stores';
  }

}