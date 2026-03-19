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
          title: Text("Padding代码实例"),
        ),
        body: Container(
          // color: Colors.amber,
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.amber),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 50, vertical: 20), // 设置对称方向的内边距
            // padding: EdgeInsets.only(
            //     left: 10, right: 10, top: 10, bottom: 10), // 不同的方向设置内边距
            // padding: EdgeInsets.all(30), // EdgeInsets.all 设置上下左右四个内边距
            child: Container(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
