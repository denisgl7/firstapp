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
    body: Container(
      decoration: BoxDecoration(
          color: Colors.green,
          // border: Border.all(width: 0),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      width: 300,
      height: 400,
      // padding: EdgeInsets.only(left: 30, top: 50),
      // margin: EdgeInsets.only(left: 20, top: 70),
      alignment: Alignment.center,
    ),
  )));
}
