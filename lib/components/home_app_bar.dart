import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ["Wallet", "Savings", "Credit", "Cards"];

    Widget customTab(String label, bool isSelected) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey.withOpacity(0.5) : Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Text(label, style: Theme.of(context).textTheme.titleSmall.copyWith(
          fontWeight: isSelected ? FontWeight.w700 : FontWeight.normal
        ),),
      );
    }

    return Container(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                child: Image.asset("lib/assets/profile-icon.png", fit: BoxFit.fill,),
              ),
              Expanded(child: Container()),
              Container(
                height: 30, width: 30, child: Image.asset("lib/assets/messages-icon.png",
                fit: BoxFit.fill,
              ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: tabs.map((tabLabel){
                return customTab(tabLabel, tabLabel == "Wallet");
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
