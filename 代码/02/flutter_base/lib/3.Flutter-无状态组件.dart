import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage()); // Widget
}

// 无状态组件 -自定义组件中的一种
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter组件初体验-无状态组件",
        home: Scaffold(
          appBar: AppBar(
            title: Text("头部区域"),
          ),
          body: Container(
            child: Center(
              child: Text("中部区域"),
            ),
          ),
          bottomNavigationBar: Container(
            height: 80,
            child: Center(
              child: Text("底部区域"),
            ),
          ),
        ));
  }
}
