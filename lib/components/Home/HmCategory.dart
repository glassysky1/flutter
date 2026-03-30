import 'package:flutter/material.dart';
import 'package:shop/viewmodals/home.dart';

class HmCategory extends StatefulWidget {
  final List<CategoryItem> categoryList;

  HmCategory({Key? key, required this.categoryList}) : super(key: key);

  @override
  _HmCategoryState createState() => _HmCategoryState();
}

class _HmCategoryState extends State<HmCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoryList.length,
        itemBuilder: (context, index) {
          final category = widget.categoryList[index];
          return Container(
            alignment: Alignment.center,
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(40)
            ),            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(category.imageUrl!, width: 50,  height: 50, fit: BoxFit.cover),
                Text(category.name!, style: TextStyle(color: Colors.pink, fontSize: 10),)
              ],
            )
            // child: Text("搜索建议${widget.categoryList[index].name}", style: TextStyle(color: Colors.white),),
          );
        }
      ),
    ); 
  }
}