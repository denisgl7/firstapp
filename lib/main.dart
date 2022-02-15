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
    body: Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Text(
        'Скорее бы вернуться в универ',
        style: TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  )));
}
