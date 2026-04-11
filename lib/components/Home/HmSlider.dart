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
  Widget _getSearch() {
    return Positioned(
      top: MediaQuery.of(context).padding.top,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.4),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "搜索...",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }

  CarouselSliderController _carouselController = CarouselSliderController();
  int _currentIndex = 0;
  Widget _getSlider() {
    // 获取屏幕宽度
    final double screenWidth = MediaQuery.of(context).size.width;
    return CarouselSlider(
      carouselController: _carouselController,
      items: List.generate(
        widget.bannerList.length,
        (index) => Image.network(
          widget.bannerList[index].imageUrl!,
          fit: BoxFit.cover,
          width: screenWidth,
        ),
      ),
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1,
        autoPlayInterval: Duration(seconds: 1),
        autoPlay: false,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  Widget _getDots() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 10,
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.bannerList.length,
            (index) => GestureDetector(
              onTap: () => _carouselController.animateToPage(index),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                height: 6,
                width: index == _currentIndex ? 40 : 20,
                decoration: BoxDecoration(
                  color: index == _currentIndex
                      ? Colors.white
                      : Color.fromRGBO(0, 0, 0, 0.3),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_getSlider(), _getSearch(), _getDots()]);
  }
}
