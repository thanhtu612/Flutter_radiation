import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {StationDetail.nameRoute: (context) => const StationDetail()},
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  List<Station> stations = [
    Station(01, 'Tram 01', 'public', true, 20.1),
    Station(02, 'Tram 02', 'public', true, 20.2),
    Station(03, 'Tram 03', 'private', false, 20.3),
    Station(04, 'Tram 04', 'private', false, 20.4),
    Station(05, 'Tram 05', 'private', false, 20.5),
    Station(06, 'Tram 06', 'public', true, 20.6),
    Station(07, 'Tram 07', 'public', true, 20.7),
    Station(08, 'Tram 08', 'private', false, 20.8),
    Station(09, 'Tram 09', 'private', false, 20.9),
    Station(10, 'Tram 10', 'private', false, 30),
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
          Navigator.pushNamed(context, StationDetail.nameRoute,
              arguments: item);
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
  double temp;
  Station(this.id, this.name, this.type, this.status, this.temp);
}

class StationDetail extends StatelessWidget {
  const StationDetail({Key? key}) : super(key: key);
  static const nameRoute = '/Detail';

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Station;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: item.status ? Colors.green : Colors.black12,
        title: Text(item.name),
        /*actions: [
          Padding(
              padding: EdgeInsets.only(right: 40.0),
              child: Icon(
                Icons.online_prediction,
                color: item.status ? Colors.green : Colors.black12,
              ))
        ],*/
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${item.temp}',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 60,
            ),
          ),
          Text(
            'o',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 30,
            ),
          ),
          Text(
            'C',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 60,
            ),
          ),
        ],
      )),
    );
  }
}
