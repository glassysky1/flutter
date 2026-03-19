import 'package:flutter/material.dart';

void main(List<String> args) {
  // runApp(MainPage()); // Widget
  runApp(MainPage());
}

// 有状态组件 第一个类 对外
class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // return 第二个类的对象
    return _MainPageState();
  }
}

// 第二个类 内部类 负责管理数据 处理业务逻辑 并且渲染视图
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Flutter组件初体验-有状态组件",
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
