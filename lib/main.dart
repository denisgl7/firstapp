import 'package:flutter/material.dart';
import 'MyBody.dart';
import 'Fox.dart';

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
            body: MyBody()
        ));
  }
}

