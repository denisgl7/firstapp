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
            child: Row(
              children: <Widget>[
                Icon(Icons.adjust, size: 50, color: Colors.orange,),
                Icon(Icons.adjust, size: 50, color: Colors.orange,),
                Icon(Icons.adjust, size: 50, color: Colors.orange,)
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.green,
              // border: Border.all(width: 0),
              // borderRadius: BorderRadius.all(Radius.circular(30))),,
            )
          ))));
  }
