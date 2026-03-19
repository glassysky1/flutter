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
          width: double.infinity, // 正无穷大
          height: double.infinity, // 正无穷大
          // color: Colors.amber,
          // padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.amber),
          child: Flex(
            direction: Axis.vertical, // 方向
            children: [
              Expanded(
                  flex: 2, // 分配空间比例
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 100,
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    width: 100,
                  ))
            ],
          ),
          // child: Flex(
          //   direction: Axis.horizontal, // 方向
          //   children: [
          //     Expanded(
          //         flex: 2, // 分配空间比例
          //         child: Container(
          //           color: Colors.red,
          //           height: 100,
          //           width: 100,
          //         )),
          //     Expanded(
          //         flex: 1,
          //         child: Container(
          //           color: Colors.green,
          //           height: 100,
          //           width: 100,
          //         ))
          //   ],
          // ),
        ),
      ),
    );
  }
}
