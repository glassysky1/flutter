import 'package:flutter/material.dart';

class MineView extends StatefulWidget {
  MineView({Key? key}) : super(key: key);

  @override
  _MineViewState createState() => _MineViewState();
}


class _MineViewState extends State<MineView> {
  final ScrollController _controller = ScrollController();
  // Widget _getLogout() {
  //   return Expanded(
  //     child: GestureDetector(
  //       onTap: () {

  //       },
  //       child: Text("退出", textAlign: TextAlign.end),
  //     ),
  //     // child:  Text("")
  //   );
  // }
  Widget _buildHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [const Color(0xFFFFF2E8), const Color(0xFFFDF6F1)],
        ),
      ),
      padding: const EdgeInsets.only(left: 20, right: 40, top: 80, bottom: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage('lib/assets/goods_avatar.png'),
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text(
                    "立即登录",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                    )
                  ),
                ),
                const SizedBox(width: 12),
                // _getLogout()
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      slivers: [
        SliverToBoxAdapter(child: _buildHeader()),
      ],
    );
  }
}