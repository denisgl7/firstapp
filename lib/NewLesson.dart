import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:  Scaffold(
      appBar: AppBar(title: Text("fdsf")),
      body: Counter(),
    ),
  ));
}
class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState(5, 2);
}
class _CounterState extends State<Counter>{

  _CounterState(this.value, this.increment);

  int value;
  int increment;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        child: Text("Value: $value", style: TextStyle(fontSize: 22)),
        onPressed:(){ setState(() {
          value = value + increment;
        });}
    );
  }
}
