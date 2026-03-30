import 'package:flutter/material.dart';
import 'package:shop/viewmodals/home.dart';

class HmHot extends StatefulWidget {
  final SpecialRecommendResult result;
  final String type;
  HmHot({Key? key, required this.result, required this.type}) : super(key: key);

  @override
  _HmHotState createState() => _HmHotState();
}

class _HmHotState extends State<HmHot> {

  List<GoodsItem> get _items {
    if (widget.result.subTypes.isEmpty) {
      return [];
    }
    return widget.result.subTypes.first.goodsItems.items.take(2).toList();
  }

  List<Widget> _getChildrenList() {
    return _items.map((item) {
      return Expanded(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  item.picture,
                  fit: BoxFit.cover,
                  height: 100,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      "lib/assets/home_cmd_inner.png",
                      fit: BoxFit.cover,
                      height: 100,
                    );
                  },
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "¥${item.price}",
                style: TextStyle(
                  fontSize: 12,
                  color: const Color.fromARGB(255, 86, 24, 20)
                ),
              )
            ],
          ),
        )
      );
    }).toList();
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Text(
          widget.type == "step" ? "一站买全" : "爆款推荐",
          style: TextStyle(
            color: const Color.fromARGB(255, 86, 24, 20),
            fontSize: 10,
            fontWeight: FontWeight.w700
          ),
        ),
        SizedBox(width: 10),
        Text(
          widget.type == "step" ? "精心优选" : "最受欢迎",
          style: TextStyle(
            fontSize: 12,
            color: const Color.fromARGB(255, 124, 63, 58)
          ),  
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.type == "step" ?  const Color.fromARGB(255, 249, 247, 219) : const Color.fromARGB(255, 211, 228, 240)
        ),
        child: Column(
          children: [
            _buildHeader(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _getChildrenList(),
            )
          ],
        ),
      )
    );
  }
}