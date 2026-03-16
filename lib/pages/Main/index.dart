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
      "icon": "lib/assets/images/ic_public_home_normal.png",
      "activeIcon": "lib/assets/images/ic_public_home_active.png",
      "title": "首页",
    },
    {
      "icon": "lib/assets/images/ic_public_pro_normal.png",
      "activeIcon": "lib/assets/images/ic_public_pro_active.png",
      "title": "分类", 
    },
    {
      "icon": "lib/assets/images/ic_public_cart_normal.png",
      "activeIcon": "lib/assets/images/ic_public_cart_active.png",
      "title": "购物车",
    },
    {
      "icon": "lib/assets/images/ic_public_my_normal.png",
      "activeIcon": "lib/assets/images/ic_public_my_active.png",
      "title": "我的",
    },
  ];
  List<BottomNavigationBarItem>  _getBottomTabBarWidgets() {
    return List.generate(_tabsList.length, (index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tabsList[index]["icon"]!, width: 30, height: 30,),
        activeIcon: Image.asset(_tabsList[index]["activeIcon"]!, width: 30, height: 30,), 
        label: _tabsList[index]["title"],
      );
    });
  }
  int _currentIndex = 0;
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