import 'package:flutter/material.dart';
import 'package:shop/pages/Cart/index.dart';
import 'package:shop/pages/Category/index.dart';
import 'package:shop/pages/Home/index.dart';
import 'package:shop/pages/Mine/index.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}
 
class _MainPageState extends State<MainPage> {
  final List<Map<String, dynamic>> _tabsList = [
    {
      "icon": "lib/assets/ic_public_home_normal.png", // 正常显示的图标
      "activeIcon": "lib/assets/ic_public_home_active.png", // 激活显示的图标
      "text": "首页",
    },
    {
      "icon": "lib/assets/ic_public_pro_normal.png", // 正常显示的图标
      "activeIcon": "lib/assets/ic_public_pro_active.png", // 激活显示的图标
      "text": "分类",
    },
    {
      "icon": "lib/assets/ic_public_cart_normal.png", // 正常显示的图标
      "activeIcon": "lib/assets/ic_public_cart_active.png", // 激活显示的图标
      "text": "购物车",
    },
    {
      "icon": "lib/assets/ic_public_my_normal.png", // 正常显示的图标
      "activeIcon": "lib/assets/ic_public_my_active.png", // 激活显示的图标
      "text": "我的",
    },
  ];
  List<BottomNavigationBarItem>  _getBottomTabBarWidgets() {
    return List.generate(_tabsList.length, (index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tabsList[index]["icon"]!, width: 30, height: 30,),
        activeIcon: Image.asset(_tabsList[index]["activeIcon"]!, width: 30, height: 30,), 
        label: _tabsList[index]["text"],
      );
    });
  }
  int _currentIndex = 3;
  List<Widget> _getChildren() {
    return [
      HomeView(), 
      CategoryView(),
      CartView(),
      MineView(), 
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: IndexedStack(
        index: _currentIndex,
        children: _getChildren() ,
      )),
      bottomNavigationBar:  BottomNavigationBar(
        items: _getBottomTabBarWidgets(),
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        }, 
      ),
    );
  }
}