import 'package:flutter/material.dart';

class HmSuggest extends StatefulWidget {
  HmSuggest({Key? key}) : super(key: key);

  @override
  _HmSuggestState createState() => _HmSuggestState();
}

class _HmSuggestState extends State<HmSuggest> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        height: 300,
        child: Text("搜索建议", style: TextStyle(fontSize: 20, color: Colors.red),),
      ),
    ); 
  }
}