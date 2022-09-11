import 'dart:convert';

import 'user.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  String jsonString = '{"name":"ThanhTu","email":"dipthanht@example.com"}';
  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  print('Howdy, ${user.name}!');
  print('We sent the verification link to ${user.email}.');

  user.name = 'Thanh Thanh';
  String json = jsonEncode(user);
  print(json);
}
