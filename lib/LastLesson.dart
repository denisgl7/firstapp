import 'package:flutter/material.dart';

import 'ColorContainer.dart';
import 'Fox.dart';
import 'MyBody.dart';

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


class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [ColorContainer(), Fox(), ColorContainer(), Fox()],
    );
  }
}
