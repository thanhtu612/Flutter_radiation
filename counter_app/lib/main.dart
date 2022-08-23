import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Hello world!',
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: const MyHomePage(title: 'Home'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title:
              Text(widget.title, style: const TextStyle(color: Colors.black)),
        ),
        body: const Center(
          child: Text('Hello World!',
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.black)),
        ));
  }
}
