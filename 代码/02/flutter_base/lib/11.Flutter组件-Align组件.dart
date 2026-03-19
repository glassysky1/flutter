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
          title: Text("Center代码实例"),
        ),
        body: Center(
          child: Container(
            // alignment: Alignment.center,
            width: 100, height: 100,
            //  color: Colors.blue
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text("居中内容", style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
