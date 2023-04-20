import 'package:flutter/material.dart';
import 'package:maya/models/data_model.dart';

class WalletAndServicesSection extends StatefulWidget {
  const WalletAndServicesSection({Key key}) : super(key: key);

  @override
  State<WalletAndServicesSection> createState() => _WalletAndServicesSectionState();
}

class _WalletAndServicesSectionState extends State<WalletAndServicesSection> {
  double walletValueContainerWidth = 255;
  double pesoSignContainerWidth = 0;
  bool isWalletShown = true;

  List<DataModel> serviceButtons = [
    DataModel(image: "lib/assets/cash-in-icon.png", label: "Cash in"),
    DataModel(image: "lib/assets/send-money-icon.png", label: "Send\nmoney"),
    DataModel(image: "lib/assets/request-money-icon.png", label: "Request\nmoney"),
    DataModel(image: "lib/assets/bank-transfer-icon.png", label: "Bank\ntransfer"),
    DataModel(image: "lib/assets/bills-icon.png", label: "Bills"),
    DataModel(image: "lib/assets/load-icon.png", label: "Load"),
    DataModel(image: "lib/assets/crypto-icon.png", label: "Crypto"),
    DataModel(image: "lib/assets/more-icon.png", label: "More"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(width: 0.1),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: double.maxFinite,
            child: Stack(
              children: [
                AnimatedContainer(
                  alignment: Alignment.centerRight,
                  duration: Duration(milliseconds: 500),
                  width: pesoSignContainerWidth,
                  curve: Curves.fastOutSlowIn,
                  child: Text("₱", style: Theme.of(context).textTheme.headline5.copyWith(
                    fontWeight: FontWeight.w600
                  ),
                    softWrap: false,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: AnimatedContainer(
                    margin: EdgeInsets.only(left: 50, right: 50),
                    alignment: Alignment.centerLeft,
                    duration: Duration(milliseconds: 300),
                    width: walletValueContainerWidth,
                    curve: Curves.fastOutSlowIn,
                    child: Text("₱ 500.25", style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                      softWrap: false,
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  top: 0,
                  child: Container(
                    alignment: Alignment.center,
                    width: 40,
                    color: Colors.white,
                    child: Image.asset("lib/assets/maya-logo-icon.png", fit: BoxFit.fill,),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  top: 0,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isWalletShown = !isWalletShown;
                        if(isWalletShown) {
                          walletValueContainerWidth = 255;
                          pesoSignContainerWidth = 0;
                        } else {
                          walletValueContainerWidth = 0;
                          pesoSignContainerWidth = 65;
                        }
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 30,
                      height: 20,
                      color: Colors.white,
                      child: Image.asset(isWalletShown ? "lib/assets/eye-open-icon.png" : "lib/assets/eye-closed-icon.png",
                        fit: BoxFit.fill,),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.topLeft,
            child: Text("Wallet balance", style: Theme.of(context).textTheme.labelLarge.copyWith(
              fontWeight: FontWeight.w600, color: Colors.grey
            ),),
          ),
          SizedBox(height: 20,),
          Container(
            height: 175,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 0,
                mainAxisSpacing: 10,
              ),
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: serviceButtons.length,
              itemBuilder: (context, index) => customServiceButton(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget customServiceButton(int index) {
    DataModel serviceButtonModel = serviceButtons[index];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.3)
          ),
          alignment: Alignment.center,
          child: Image.asset(serviceButtonModel.image, fit: BoxFit.fill,),
        ),
        SizedBox(height: 10,),
        Text(serviceButtonModel.label, style: Theme.of(context).textTheme.labelSmall.copyWith(
          color: Colors.grey
        ), textAlign: TextAlign.center)
      ],
    );
  }
}
