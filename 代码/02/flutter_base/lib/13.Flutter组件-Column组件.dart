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
          title: Text("Column代码实例"),
        ),
        body: Container(
          width: double.infinity, // 正无穷大
          height: double.infinity, // 正无穷大
          // color: Colors.amber,
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.amber),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween, // 两头对齐
            // mainAxisAlignment: MainAxisAlignment.spaceAround, // 环绕模式
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 均分模式
            // mainAxisAlignment: MainAxisAlignment.start, // 从头排列
            // mainAxisAlignment: MainAxisAlignment.end, // 从尾部排列
            mainAxisAlignment: MainAxisAlignment.center, // 居中排列
            //  crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴start
            // crossAxisAlignment: CrossAxisAlignment.center, // 交叉轴居中
            crossAxisAlignment: CrossAxisAlignment.end, // 交叉轴end
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              // SizedBox(
              //   height: 10,
              // ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 100,
                height: 100,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
