import 'package:car_app/konstants.dart';
import 'package:car_app/screens/home_screen/custom_navbar.dart';
import 'package:car_app/size_config.dart';
import 'package:flutter/material.dart';

import 'homebody.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBgColor,
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: kBgColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // padding: EdgeInsets.all(getProportionateWidth(5)),
              margin: EdgeInsets.only(left: getProportionateWidth(10)),
              width: getProportionateWidth(40),
              height: getProportionateHeight(40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kCyanColor.withOpacity(0.8),
                  border: Border.all(width: 1, color: Colors.white)),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: getProportionateWidth(10)),
              width: getProportionateWidth(40),
              height: getProportionateHeight(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kCyanColor.withOpacity(0.8),
                border: Border.all(width: 1, color: Colors.white),
              ),
              child: Icon(
                Icons.notifications_on_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: HomeBody(),
      ),
      bottomNavigationBar: CustomBottomNavBAr(),
    );
  }
}
