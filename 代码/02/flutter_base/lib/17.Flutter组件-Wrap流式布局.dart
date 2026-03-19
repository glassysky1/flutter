import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(List<String> args) {
  // runApp(MainPage()); // Widget
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  List<Widget> getList() {
    return List.generate(10, (index) {
      return Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      );
    });
    // return [];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wrap代码实例"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.spaceAround,
            direction: Axis.horizontal,
            children: getList(),
          ),
        ),
      ),
    );
  }
}
