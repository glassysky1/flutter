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
  List<CategoryItem> _categoryList = [];


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
        child: HmCategory(categoryList: _categoryList),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: 10),
      ),
      // sliver普通组件
      SliverToBoxAdapter(
        child: HmSuggest(specialRecommendResult: _specialRecommendResult),
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
                child: HmHot(result: _inVogueResult, type: "hot"),
              ),
              SizedBox(width: 10),
              Expanded(
                child: HmHot(result: _oneStopResult, type: "step"),
              ),
            ],
          ),
        ), 
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: 10),
      ),
      HmMoreList(recommendList: _recommendList)
    ];
  }


  // 特惠推荐
  SpecialRecommendResult _specialRecommendResult = SpecialRecommendResult(
    id: "",
    title: "",
    subTypes: [],
  );

  // 热榜推荐
  SpecialRecommendResult _inVogueResult = SpecialRecommendResult(
    id: "",
    title: "",
    subTypes: [],
  );
  // 一站式推荐
  SpecialRecommendResult _oneStopResult = SpecialRecommendResult(
    id: "",
    title: "",
    subTypes: []
  );
 
  // 推荐列表
  List<GoodDetailItem> _recommendList = [];

  // 页码
  int _page = 1;
  bool _isLoading = false;
  bool _hasMore = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _registerEvent();
    _getBannerList();
    _getCategoryList();
    _getProductList();
    _getInVogueList();
    _getOneStopList();
    _getRecommendList();
  }
  void _registerEvent() {
    _controller.addListener(() {
      if (_controller.position.pixels >= (_controller.position.maxScrollExtent - 50)) {
        _getRecommendList();
      }
    });
  }

  Future<void> _getRecommendList () async {
    if (_isLoading || !_hasMore) {
      return;
    }
    _isLoading = true;
    int requestLimit = _page * 8;
    _recommendList = await getRecommendListAPI({ "limit": requestLimit });
    _isLoading = false;
    setState(() {
      
    });
    if (_recommendList.length < requestLimit) {
      _hasMore = false;
      return;
    }
    _page++;
  }

  void _getBannerList() async{
    _bannerList = await getBannerListAPI();
    setState(() {
      
    });
  }
  void _getCategoryList() async{
    _categoryList = await getCategoryListAPI();
    setState(() {
      
    });
  }

    // 获取特惠推荐列表
  void _getProductList() async {
    _specialRecommendResult = await getProductListAPI();
    setState(() {
    });
  }
  // 获取热榜推荐列表
  Future<void> _getInVogueList() async {
    _inVogueResult = await getInVogueListAPI();
  }

  // 获取一站式推荐列表
  Future<void> _getOneStopList() async {
    _oneStopResult = await getOneStopListAPI();
  }

  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      slivers: _getScrollChildren()
    );
  }
}