import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  CategoryView({Key? key}) : super(key: key);

  @override
  _CategoryViewState createState() => _CategoryViewState();
}
 
class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分类"),
        centerTitle: true,
      ), 
      body: Center(child: Text("分类") )
    );
  }
}