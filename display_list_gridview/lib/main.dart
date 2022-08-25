import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  List<Station> stations = [
    Station(01, 'Tram 01', 'public', true),
    Station(02, 'Tram 02', 'public', true),
    Station(03, 'Tram 03', 'private', false),
    Station(04, 'Tram 04', 'private', false),
    Station(05, 'Tram 05', 'private', false),
    Station(06, 'Tram 06', 'public', true),
    Station(07, 'Tram 07', 'public', true),
    Station(08, 'Tram 08', 'private', false),
    Station(09, 'Tram 09', 'private', false),
    Station(10, 'Tram 10', 'private', false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        children: stations.map((item) {
          return StationItem(item: item);
        }).toList(),
      ),
    );
  }
}

class StationItem extends StatelessWidget {
  const StationItem({Key? key, required this.item}) : super(key: key);
  final Station item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print('Clicked ${item.name}');
        },
        splashColor: Colors.red,
        child: Card(
          child: Container(
            color: item.status ? Colors.green : Colors.black12,
            alignment: Alignment.center,
            child: Text(
              item.name,
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}

class Station {
  int id;
  String name;
  String type;
  bool status;
  Station(this.id, this.name, this.type, this.status);
}
