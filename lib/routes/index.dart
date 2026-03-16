import 'package:flutter/material.dart';
import 'package:shop/pages/Login/index.dart';
import 'package:shop/pages/Main/index.dart';

Widget getBootWidget() {
  return MaterialApp(
    // 命名路由
    initialRoute: "/",
    routes: getBootRoutes(),
  ); 
}

// 返回该App的路由配置
Map<String, Widget Function(BuildContext)> getBootRoutes() {
  return {
    "/": (context) => MainPage(),
    "login": (context) => LoginPage()
  };
}
