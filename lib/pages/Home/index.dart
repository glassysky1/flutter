import 'package:flutter/material.dart';
import 'package:shop/api/home.dart';
import 'package:shop/components/Home/HmCategory.dart';
import 'package:shop/components/Home/HmHot.dart';
import 'package:shop/components/Home/HmMoreList.dart';
import 'package:shop/components/Home/HmSlider.dart';
import 'package:shop/components/Home/HmSuggest.dart';
import 'package:shop/viewmodals/home.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}
 
class _HomeViewState extends State<HomeView> {
   
  List<BannerItem> _bannerList = [];


  List<Widget> _getScrollChildren() {
    return [
      // sliver普通组件
      SliverToBoxAdapter(
        child: HmSlider(bannerList: _bannerList,),
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
  void initState() {
    // TODO: implement initState
    super.initState();
    _getBannerList();
  }

  void _getBannerList() async{
    _bannerList = await getBannerListAPI();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: _getScrollChildren()
    );
  }
}