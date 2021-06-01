import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, result = 0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      result = int.parse(t1.text) + int.parse(t2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('calculator'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(100.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Result = $result ",
                style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: 'Enter number'),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: 'Enter number'),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.01)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+"),
                  color: Colors.greenAccent,
                  onPressed: () {
                    doAddition();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
