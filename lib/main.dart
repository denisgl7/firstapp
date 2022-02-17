import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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
              Container(
                width: 200,
                  height: 300,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.red),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Stack(children: const [
                      Icon(
                        Icons.air,
                        color: Colors.blue,
                        size: 40,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 50,
                      )
                    ],), Stack(children: const [
                      Icon(
                        Icons.air,
                        color: Colors.blue,
                        size: 40,
                      ),
                      Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 50,
                      )
                    ],)],
                  )),
              Icon(
                Icons.airplay,
                color: Colors.white,
                size: 200,
              ),
            ],
          ))));
}
