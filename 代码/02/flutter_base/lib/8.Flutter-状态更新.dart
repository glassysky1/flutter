import 'package:flutter/material.dart';

void main(List<String> args) {
  // runApp(MainPage()); // Widget
  runApp(MainPage());
}

// 有状态组件
class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    count -= 1;
                    print(count);
                    setState(() {});
                  },
                  child: Text("减")),
              Text(count.toString()),
              TextButton(
                  onPressed: () {
                    count += 1;
                    print(count);
                    setState(() {});
                  },
                  child: Text("加"))
            ],
          ),
        ),
      ),
    );
  }
}
