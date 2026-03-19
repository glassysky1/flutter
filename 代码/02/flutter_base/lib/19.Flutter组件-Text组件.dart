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
          title: Text("Text代码实例"),
        ),
        body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Text.rich(TextSpan(
              text: "Hello ",
              children: [
                TextSpan(
                    text: "Flutter", style: TextStyle(color: Colors.green)),
                TextSpan(text: "!")
              ],
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  fontWeight: FontWeight.bold))),
          // child: Text(
          //   "今天天气非常不错，今天天气非常不错，今天天气非常不错，今天天气非常不错，今天天气非常不错，今天天气非常不错，今天天气非常不错，今天天气非常不错，今天天气非常不错，今天天气非常不错，",
          //   style: TextStyle(color: Colors.blue, fontSize: 30),
          //   maxLines: 3,
          //   overflow: TextOverflow.ellipsis,
          // ),
          // child: Text(
          //   "Hello Flutter!",
          //   style: TextStyle(
          //       fontSize: 50,
          //       color: Colors.blue,
          //       fontStyle: FontStyle.italic,
          //       fontWeight: FontWeight.w900,
          //       decoration: TextDecoration.underline,
          //       decorationColor: Colors.red),
          // ),
        ),
      ),
    );
  }
}
