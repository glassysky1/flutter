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
    return MaterialApp(
        title: "Flutter组件初体验-无状态组件",
        home: Scaffold(
          appBar: AppBar(
            title: Text("头部区域"),
          ),
          body: Container(
            child: Center(
              child: TextButton(
                  onPressed: () {
                    print("按钮的点击事件");
                  },
                  child: Text("按钮")),
              // child: GestureDetector(
              //   // 点击事件

              //   onTap: () {
              //     //print("点击了该区域");
              //   },
              //   onDoubleTap: () {
              //     print("双击了该区域");
              //   },
              //   child: Text("中部区域"),
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
