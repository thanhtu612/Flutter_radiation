import 'dart:convert';

import 'user.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  // String jsonString = '{"name":"ThanhTu","email":"dipthanht@example.com"}';
  String jsonString =
      '{"name":"ThanhTu","email":"dipthanht@example.com","address":{"street":"My st.","city":"New York"}}';
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  print('Howdy, ${user.name}!');
  print('Address: ${user.address.street}, ${user.address.city}');
  print('We sent the verification link to ${user.email}.');

  user.name = 'Thanh Thanh';
  user.address.city = "Ho Chi Minh City";
  user.address.street = "Nguyen Thien Thuat Street";
  String json = jsonEncode(user);
  print(json);
}
