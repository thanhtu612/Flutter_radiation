import 'dart:convert';

import 'package:flutter/material.dart';

import 'user.dart';

void main() {
  // runApp(const MyApp());
  String jsonString =
      '{"name":"John Smith","email":"john@example.com"},"address":{"street":"My St.","city":"New York"}';
  // Map<String, dynamic> user = jsonDecode(jsonString);
  // print("Hello ${user['name']}");
  // print("We send the vertification link to ${user['email']}");

  Map<String, dynamic> userMap = jsonDecode(jsonString);
  var user = User.fromJson(userMap);

  print('Howdy, ${user.name}!');
  print('Address: ${user.address.street}, ${user.address.city}');
  print('We send the vertification link to ${user.email}.');

  user.name = "Thanh Tu";
  String json = jsonEncode(user);
  print(json);
}

/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
*/
