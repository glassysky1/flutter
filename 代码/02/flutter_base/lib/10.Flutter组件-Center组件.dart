import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(List<String> args) {
  // runApp(MainPage()); // Widget
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Align代码实例"),
        ),
        body: Container(
          color: Colors.blue,
          child: Align(
            alignment: Alignment.center,
            widthFactor: 2,
            heightFactor: 2,
            child: Icon(
              Icons.star,
              size: 150,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
