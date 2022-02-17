import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      // theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Привет 4 курс",
              style: TextStyle(fontSize: 32),
            ),
          ),
          body: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/fox.jpg'),
                width: 200,
              ),
              Text(
                'Text sdfd',
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto', color: Colors.red),
              )
            ],
          ))));
}
