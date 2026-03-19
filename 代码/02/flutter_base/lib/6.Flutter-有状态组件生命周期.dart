import 'package:flutter/material.dart';

void main(List<String> args) {
  // runApp(MainPage()); // Widget
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() {
    print("createState阶段执行");
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    print("initState阶段执行");
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies阶段执行");
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    print("didUpdateWidget阶段执行");
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("deactivate阶段执行");
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose阶段执行");
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build阶段执行");
    return Container(
      child: null,
    );
  }
}

// // 无状态组件 -自定义组件中的一种
// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//         title: "Flutter组件初体验-无状态组件",
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("头部区域"),
//           ),
//           body: Container(
//             child: Center(
//               child: Text("中部区域"),
//             ),
//           ),
//           bottomNavigationBar: Container(
//             height: 80,
//             child: Center(
//               child: Text("底部区域"),
//             ),
//           ),
//         ));
//   }
// }

// // 有状态组件 第一个类 对外
// class MainPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     // return 第二个类的对象
//     return _MainPageState();
//   }
// }

// // 第二个类 内部类 负责管理数据 处理业务逻辑 并且渲染视图
// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//         title: "Flutter组件初体验-有状态组件",
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text("头部区域"),
//           ),
//           body: Container(
//             child: Center(
//               child: Text("中部区域"),
//             ),
//           ),
//           bottomNavigationBar: Container(
//             height: 80,
//             child: Center(
//               child: Text("底部区域"),
//             ),
//           ),
//         ));
//   }
// }
