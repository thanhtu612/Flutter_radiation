import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Counter',
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int _counter = 0;
  void countUp() {
    print('Pushed counter up');
    setState(() {
      _counter++;
    });
    print('$_counter');
  }

  void countDown() {
    print('Pushed counter down');
    setState(() {
      _counter--;
    });
    print('$_counter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Counter value:'),
            Text(
              '$_counter',
              style: TextStyle(color: Colors.red, fontSize: 40),
            )
          ],
        )),
        floatingActionButton: Padding(
          padding: EdgeInsets.all(15),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            FloatingActionButton(
              onPressed: countDown,
              child: const Icon(Icons.remove),
            ),
            FloatingActionButton(
              onPressed: countUp,
              child: const Icon(Icons.add),
            ),
          ]),
        ));
  }
}
