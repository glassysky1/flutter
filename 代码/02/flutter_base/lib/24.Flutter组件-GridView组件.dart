import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(List<String> args) {
  // runApp(MainPage()); // Widget
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _phoneController = TextEditingController(); // 账号控制器
  TextEditingController _codeController = TextEditingController(); // 密码控制器
  ScrollController _controller = ScrollController(); //滚动条控制器
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("登录"),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1),
          // 按照列数去固定
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 4,
          //     mainAxisSpacing: 10,
          //     crossAxisSpacing: 10), // 布局委托
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text("第${index + 1}个",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            );
          }),
      // body: GridView.extent(
      //   scrollDirection: Axis.horizontal,
      //   padding: EdgeInsets.all(10),
      //   maxCrossAxisExtent: 200, // 最大宽度或者高度来决定
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   children: List.generate(100, (int index) {
      //     return Container(
      //       alignment: Alignment.center,
      //       color: Colors.blue,
      //       child: Text("第${index + 1}个",
      //           style: TextStyle(color: Colors.white, fontSize: 20)),
      //     );
      //   }),
      // )
      // body: GridView.count(
      //   scrollDirection: Axis.vertical,
      //   padding: EdgeInsets.all(10),
      //   crossAxisCount: 2, // 设置固定的列数或者行数
      //   mainAxisSpacing: 10,
      //   crossAxisSpacing: 10,
      //   children: List.generate(100, (int index) {
      //     return Container(
      //       alignment: Alignment.center,
      //       color: Colors.blue,
      //       child: Text("第${index + 1}个",
      //           style: TextStyle(color: Colors.white, fontSize: 20)),
      //     );
      //   }),
      // ),
    ));
  }
}
