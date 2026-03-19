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
          title: Text("Flex代码实例"),
        ),
        body: Container(
          color: Colors.amber,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Container(
                color: Colors.blue,
                height: 100,
              ),
              Expanded(child: Container(color: Colors.blueGrey)),
              Container(
                color: Colors.red,
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
