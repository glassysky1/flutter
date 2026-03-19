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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("登录"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            children: [
              TextField(
                controller: _phoneController,
                onChanged: (value) {
                  print(value);
                },
                onSubmitted: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20), // 内容内边距
                    hintText: "请输入账号",
                    fillColor: const Color.fromARGB(255, 222, 219, 207),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _codeController,
                obscureText: true, // 不显示实际内容 用来做密码框显示
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20), // 内容内边距
                    hintText: "请输入密码",
                    fillColor: const Color.fromARGB(255, 222, 219, 207),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25))),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25)),
                child: TextButton(
                    onPressed: () {
                      print(
                          "登录-${_phoneController.text}-${_codeController.text}");
                    },
                    child: Text("登录", style: TextStyle(color: Colors.white))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
