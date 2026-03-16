import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop/viewmodals/home.dart';

class HmSlider extends StatefulWidget {
  final List<BannerItem> bannerList;
  HmSlider({Key? key, required this.bannerList}) : super(key: key);

  @override
  _HmSliderState createState() => _HmSliderState();
}

class _HmSliderState extends State<HmSlider> {
 
  Widget _getSlider () {
    // 获取屏幕宽度
    final double screenWidth = MediaQuery.of(context).size.width;
     return CarouselSlider(
      items: List.generate(widget.bannerList.length, (index) => 
        Image.network(widget.bannerList[index].imageUrl!, fit: BoxFit.cover, width: screenWidth,)
      ), 
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 1), 
        autoPlay: true
      ),
     );
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _getSlider()
      ],
    );
  }
}