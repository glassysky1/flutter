import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(List<String> args) {
  // runApp(MainPage()); // Widget
  runApp(MainPage());
}

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           children: [
//             Text("父组件", style: TextStyle(color: Colors.blue, fontSize: 30)),
//             Child(
//               message: "老高真棒",
//             )
//             // Child(
//             //   message: "老高",
//             // )
//           ],
//         ),
//       ),
//     ));
//   }
// }

// // 无状态组件子组件
// // class Child extends StatelessWidget {
// //   final String? message; // 定义属性
// //   // 构造函数中接收参数
// //   const Child({Key? key, this.message}) : super(key: key);

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Text("子组件-$message",
// //           style: TextStyle(color: Colors.red, fontSize: 18)),
// //     );
// //   }
// // }
// // 有状态组件的子组件
// class Child extends StatefulWidget {
//   final String message;
//   Child({Key? key, required this.message}) : super(key: key);

//   @override
//   _ChildState createState() => _ChildState();
// }

// class _ChildState extends State<Child> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("子组件${widget.message}",
//           style: TextStyle(color: Colors.red, fontSize: 18)),
//     );
//   }
// }

// 父组件
class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> _list = ["鱼香肉丝", "宫保鸡丁", "麻婆豆腐", "京酱肉丝", "溜肉片"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          padding: EdgeInsets.all(10),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(_list.length, (int index) {
            return Child(
              foodName: _list[index],
            ); // 返回整个的子组件
          }),
        ),
      ),
    );
  }
}

// 子组件
class Child extends StatefulWidget {
  final String foodName;
  Child({Key? key, required this.foodName}) : super(key: key);

  @override
  _ChildState createState() => _ChildState();
}

class _ChildState extends State<Child> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        widget.foodName,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
