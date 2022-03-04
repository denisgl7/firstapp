import 'package:flutter/cupertino.dart';
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
                "Классы",
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.center,
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
    List<ListItem> items = [];
    for (int i = 0; i < 1000; i++) {
      ListItem item;
      if (i % 10 == 0) {
        item = HeadItem('$i');
      } else if (i % 5 == 0) {
        item = ColorItem('$i');
      } else {
        item = MessageItem('$i');
      }
      items.add(item);
    }
    return ListView.builder(itemBuilder: (context, index) {
      var item = items[index];
      if (item is MessageItem) {
        return MessageContainer(item.message);
      } else if (item is ColorItem){
        return ColorContainer(item.color);
      } else if (item is HeadItem) {
          return HeadContainer(item.title);
        }
      return SizedBox();
    });
  }
}


class ColorContainer extends StatelessWidget{
  @override
  String color;
  ColorContainer(this.color);
  Widget build(BuildContext context) {
    return Card(
      child: Text(
        color,
        style: TextStyle(color: Colors.red, fontSize: 100),
        textAlign: TextAlign.center,
      ),
      color: Colors.blueGrey,
    );  }

}


class MessageContainer extends StatelessWidget{
  @override
  String message;
  MessageContainer(this.message);
  Widget build(BuildContext context) {
    return Card(
      child: Text(
        message,
        style: TextStyle(fontSize: 25),
      ),
    );
  }

}


class HeadContainer extends StatelessWidget{
  @override
  String title;
  HeadContainer(this.title);
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
        style: TextStyle(fontSize: 56),
        textAlign: TextAlign.center,
      ),
      color: Colors.blue,
    );
  }

}


class ListItem {}

class HeadItem extends ListItem {
  String title;
  HeadItem(this.title);
}
class ColorItem extends ListItem{
  String color;
  ColorItem(this.color);
}
class MessageItem extends ListItem {
  String message;

  MessageItem(this.message);
}
