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
          title: Text("Stack代码实例"),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.grey,
              ),
              Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  )),
              Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  )),
              Positioned(
                  left: 10,
                  bottom: 10,
                  child: Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  )),
              Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    color: Colors.blue,
                    width: 50,
                    height: 50,
                  )),
              // Positioned(
              //     left: 0,
              //     right: 0,
              //     top: 0,
              //     bottom: 0,
              //     child: Container(
              //       color: Colors.green,
              //       width: 50,
              //       height: 50,
              //     )),
            ],
          ),
          // Stack的基础用法
          // child: Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     Container(
          //       width: 300,
          //       height: 300,
          //       color: Colors.blue,
          //     ),
          //     Container(
          //       width: 200,
          //       height: 200,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       width: 100,
          //       height: 100,
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       width: 50,
          //       height: 50,
          //       color: Colors.green,
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
