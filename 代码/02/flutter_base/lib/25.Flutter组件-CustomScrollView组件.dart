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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("登录"),
            ),
            body: CustomScrollView(
              slivers: [
                // 包裹普通Widget的东西
                SliverToBoxAdapter(
                  child: Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    height: 260,
                    child: Text("轮播图",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                  ),
                ),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: 10,
                )),
                SliverPersistentHeader(
                  delegate: _StickyCategory(),
                  pinned: true, // 固定吸顶
                ),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: 10,
                )),
                SliverGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: List.generate(100, (index) {
                    return Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text('列表项${index + 1}',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    );
                  }),
                )
                // SliverList.separated(
                //     itemCount: 100,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //         height: 100,
                //         color: Colors.blue,
                //         alignment: Alignment.center,
                //         child: Text("列表项${index + 1}",
                //             style:
                //                 TextStyle(color: Colors.white, fontSize: 20)),
                //       );
                //     },
                //     separatorBuilder: (BuildContext context, int index) {
                //       return SizedBox(
                //         height: 20,
                //       );
                //     })
              ], // 切片列表
            )));
  }
}

class _StickyCategory extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: ListView.builder(
          itemCount: 30,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.blue,
              alignment: Alignment.center,
              child:
                  Text('分类${index + 1}', style: TextStyle(color: Colors.white)),
            );
          }),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 80; // 最大展开高度

  @override
  // TODO: implement minExtent
  double get minExtent => 40; // 最小折叠高度

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false; // 不需要重建
  }
}
