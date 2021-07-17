import 'package:car_app/model/car_model.dart';
import 'package:car_app/screens/details_screen/details_screen.dart';
import 'package:flutter/material.dart';

import '../../konstants.dart';
import '../../size_config.dart';

class CarModelCard extends StatelessWidget {
  final CarModel carModel;

  const CarModelCard({required this.carModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, primaryAnimation, secondaryAnimation) =>
                DetailsScreen(carModel: carModel),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateWidth(10),
          vertical: getProportionateHeight(10),
        ),
        width: double.infinity,
        height: SizeConfig.screenHeight! * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 5),
              blurRadius: 5,
              color: kCyanColor.withOpacity(0.5),
            ),
            BoxShadow(
              offset: Offset(-5, -5),
              blurRadius: 5,
              color: kCyanColor.withOpacity(0.1),
            ),
          ],
        ),
        child: Stack(children: [
          Container(
            width: SizeConfig.screenWidth! * 0.9,
            margin: EdgeInsets.only(right: getProportionateWidth(20)),
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateWidth(15),
              vertical: getProportionateHeight(10),
            ),
            decoration: BoxDecoration(
              color: kBgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  carModel.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  carModel.subtitle,
                  style: TextStyle(height: 1.5),
                ),
                SizedBox(
                  height: getProportionateHeight(30),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateWidth(20),
                  vertical: getProportionateHeight(2)),
              width: getProportionateWidth(200),
              height: getProportionateHeight(20),
              child: Text(
                carModel.price,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                  color: kDecorationColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 10,
            child: Image.asset(
              carModel.image,
              height: getProportionateHeight(100),
            ),
          )
        ]),
      ),
    );
  }
}
