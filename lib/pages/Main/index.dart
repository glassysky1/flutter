import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/api/home.dart';
import 'package:shop/api/user.dart';
import 'package:shop/pages/Cart/index.dart';
import 'package:shop/pages/Category/index.dart';
import 'package:shop/pages/Home/index.dart';
import 'package:shop/pages/Mine/index.dart';
import 'package:shop/stores/TokenManager.dart';
import 'package:shop/stores/UserController.dart';

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
  List<BottomNavigationBarItem> _getBottomTabBarWidgets() {
    return List.generate(_tabsList.length, (index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tabsList[index]["icon"]!, width: 30, height: 30),
        activeIcon: Image.asset(
          _tabsList[index]["activeIcon"]!,
          width: 30,
          height: 30,
        ),
        label: _tabsList[index]["text"],
      );
    });
  }

  int _currentIndex = 0;
  List<Widget> _getChildren() {
    return [HomeView(), CategoryView(), CartView(), MineView()];
  }

  @override
  void initState() {
    super.initState();
    _initUser();
  }

  _initUser() async {
    await tokenManager.init();
    if (tokenManager.getToken().isNotEmpty) {
      _userController.updateUserInfo(await getUserInfoAPI());
    }
  }

  final UserController _userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: _getChildren()),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
