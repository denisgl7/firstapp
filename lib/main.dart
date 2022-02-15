import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text(
        "Привет 4 курс",
        style: TextStyle(fontSize: 32),
      ),
    ),
    body: Align(
      alignment: Alignment(0, 0),
      child:  FloatingActionButton(
        tooltip: 'Increment',
        onPressed: () {  },
        child: const Icon(Icons.access_alarm),
      ),
    ),
  )));
}
