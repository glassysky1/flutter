import 'package:flutter/material.dart';
import 'package:shop/components/Home/HmCategory.dart';
import 'package:shop/components/Home/HmHot.dart';
import 'package:shop/components/Home/HmMoreList.dart';
import 'package:shop/components/Home/HmSlider.dart';
import 'package:shop/components/Home/HmSuggest.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}
 
class _HomeViewState extends State<HomeView> {
  List<Widget> _getScrollChildren() {
    return [
      // sliver普通组件
      SliverToBoxAdapter(
        child: HmSlider(),
      ),
      // sliver普通组件
      SliverToBoxAdapter(
        child: SizedBox(height: 10),
      ),
      // 放置分类组件
      SliverToBoxAdapter(
        child: HmCategory(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: 10),
      ),
      // sliver普通组件
      SliverToBoxAdapter(
        child: HmSuggest(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: 10),
      ),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: HmHot(),
              ),
              SizedBox(width: 10),
              Expanded(
                child: HmHot(),
              ),
            ],
          ),
        ), 
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: 10),
      ),
      HmMoreList()
    ];
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: _getScrollChildren()
    );
  }
}