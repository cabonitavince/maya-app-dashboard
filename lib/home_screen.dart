import 'package:flutter/material.dart';
import 'package:maya/components/carousel_promos_section.dart';
import 'package:maya/components/get_rewards_section.dart';
import 'package:maya/components/home_app_bar.dart';
import 'package:maya/components/home_fab.dart';
import 'package:maya/components/transactions_section.dart';
import 'package:maya/components/wallet_and_services_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: HomeFab(),
      appBar: PreferredSize(preferredSize: Size.fromHeight(200), child: HomeAppBar(),),
      body: ListView(
        children: [
          WalletAndServicesSection(),
          SizedBox(height: 25,),
          CarouselPromosSection(),
          SizedBox(height: 20,),
          TransactionsSection(),
          SizedBox(height: 20,),
          GetRewardsSection(),
          SizedBox(height: 110,)
        ],
      ),
    );
  }
}
