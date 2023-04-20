import 'package:flutter/material.dart';

class GetRewardsSection extends StatelessWidget {
  const GetRewardsSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget customCard(String title, String shortDesc,
        String imageClipArt, Color containerColor, Color titleColor, Color shortDescColor) {
      return Expanded(
        child: Container(
          height: 150,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleMedium.copyWith(
                fontWeight: FontWeight.bold, color: titleColor
              ),),
              SizedBox(height: 5,),
              Text(shortDesc, style: Theme.of(context).textTheme.labelSmall.copyWith(
                color: shortDescColor
              ),),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  alignment: Alignment.bottomRight,
                  height: 70,
                  width: 70,
                  child: Image.asset(imageClipArt, fit: BoxFit.fill,),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("GET REWARDS✨", style: Theme.of(context).textTheme.labelMedium.copyWith(
            color: Colors.grey
          ),),
          SizedBox(height: 25,),
          Row(
            children: [
              customCard("Missions", "Earn extra rewards for\ncompleting missions",
                  "lib/assets/missions-clip-art.png", Colors.green, Colors.white, Colors.white70),
              SizedBox(width: 15,),
              customCard("Vouchers", "Claim your vouchers\nbefore they're gone",
                  "lib/assets/vouchers-clip-art.png", Colors.grey.withOpacity(0.3), Colors.black, Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
