import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:maya/models/data_model.dart';

class CarouselPromosSection extends StatefulWidget {
  const CarouselPromosSection({Key key}) : super(key: key);

  @override
  State<CarouselPromosSection> createState() => _CarouselPromosSectionState();
}

class _CarouselPromosSectionState extends State<CarouselPromosSection> {
  List<DataModel> datas = [
    DataModel(
      image: "lib/assets/promo-1.png",
      label: "🤩Invest for as little as P1"
    ),
    DataModel(
        image: "lib/assets/promo-2.png",
        label: "🎉1% cashback guaranteed or win up to 100%"
    ),
    DataModel(
        image: "lib/assets/promo-3.png",
        label: "🤑Learn how"
    ),
    DataModel(
        image: "lib/assets/promo-4.png",
        label: "😎Get 30% cashback on weekends"
    ),
    DataModel(
        image: "lib/assets/promo-5.png",
        label: "🤑Open a savings account"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: CarouselSlider.builder(
        itemCount: datas.length,
        options: CarouselOptions(
          height: 150,
          autoPlay: true,
          viewportFraction: 0.9
        ),
        itemBuilder: (context,index, realIndex) {
          DataModel data = datas[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(data.image),
                ),
                SizedBox(height: 5,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(data.label, style: Theme.of(context).textTheme.labelMedium,),
                      Expanded(child: Container()),
                      Icon(Icons.arrow_forward_ios_outlined, color: Colors.green, size: 15,)
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
