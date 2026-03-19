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
            body: Stack(
              children: [
                SingleChildScrollView(
                  controller: _controller,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: List.generate(100, (index) {
                      return Container(
                        margin: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        color: Colors.blue,
                        height: 100,
                        child: Text("我是第${index + 1}个",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        alignment: Alignment.center,
                      );
                    }),
                  ),
                ),
                // 放置堆叠组件
                Positioned(
                  right: 10,
                  top: 10,
                  child: GestureDetector(
                      onTap: () {
                        // print("去底部");
                        // _controller.jumpTo(
                        //     _controller.position.maxScrollExtent); // 滚动到底部
                        _controller.animateTo(
                            _controller.position.maxScrollExtent,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(40)),
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        child:
                            Text("去底部", style: TextStyle(color: Colors.white)),
                      )),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: GestureDetector(
                      onTap: () {
                        // print("去顶部");
                        // _controller.jumpTo(0);
                        _controller.animateTo(0,
                            duration: Duration(seconds: 1),
                            curve: Curves.bounceIn);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(40)),
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        child:
                            Text("去顶部", style: TextStyle(color: Colors.white)),
                      )),
                )
              ],
            )));
  }
}
