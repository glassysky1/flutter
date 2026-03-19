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
          child: Image.network(
            "https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/1.jpg",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          // child: Image.asset(
          //   "lib/images/github.jpg",
          //   width: 100,
          //   height: 100,
          //   // fit: BoxFit.contain,
          //   // fit: BoxFit.cover,
          //   //  fit: BoxFit.fill,
          //   fit: BoxFit.fitWidth,
          // ),
        ),
      ),
    );
  }
}
