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
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              // margin: EdgeInsets.only(top: 10),
              color: Colors.blue,
              width: double.infinity,
              height: 80,
              child: Text(
                '第${index + 1}个',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              alignment: Alignment.center,
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
                height: 10, width: double.infinity, color: Colors.amber);
          },
          itemCount: 100),
      // body: ListView.builder(
      //   itemCount: 100, // 列表项的长度是多少
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       margin: EdgeInsets.only(top: 10),
      //       color: Colors.blue,
      //       width: double.infinity,
      //       height: 80,
      //       child: Text(
      //         '第${index + 1}个',
      //         style: TextStyle(color: Colors.white, fontSize: 30),
      //       ),
      //       alignment: Alignment.center,
      //     );
      //   },
      //   padding: EdgeInsets.all(20),
      //   // children: List.generate(100, (index) {
      //   //   return Container(
      //   //     margin: EdgeInsets.only(top: 10),
      //   //     color: Colors.blue,
      //   //     width: double.infinity,
      //   //     height: 80,
      //   //     child: Text(
      //   //       '第${index + 1}个',
      //   //       style: TextStyle(color: Colors.white, fontSize: 30),
      //   //     ),
      //   //     alignment: Alignment.center,
      //   //   );
      //   // }),
      // ),
    ));
  }
}
