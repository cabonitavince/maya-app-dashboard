import 'package:flutter/material.dart';

class HomeFab extends StatelessWidget {
  const HomeFab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget customBottomIcon(String imageIcon) {
      return Container(
        height: 32,
        width: 30,
        child: Image.asset(imageIcon, fit: BoxFit.fill,),
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15)
      ),
      height: 60,
      width: 220,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          customBottomIcon("lib/assets/bottom-icon-1.png"),
          customBottomIcon("lib/assets/bottom-icon-2.png"),
          customBottomIcon("lib/assets/bottom-icon-3.png"),
        ],
      ),
    );
  }
}
