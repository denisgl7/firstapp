import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Привет 4 курс",
                style: TextStyle(fontSize: 32),
              ),
            ),
            body: MyBody()));
  }
}

class MyBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int value = 0;
  double fontSize = 22;

  @override
  Widget build(BuildContext context) {
    var items = <Widget>[];
    for (int i = 0; i < 100000; i++) {
      Widget item;
      item = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: (){}, icon: Icon(Icons.add), label: Text('$i'))
          ]);
      items.add(item);
    }
    return ListView(
      scrollDirection: Axis.vertical,
      children: items,
    );
  }
}
