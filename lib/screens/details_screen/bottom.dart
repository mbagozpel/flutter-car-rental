import 'package:car_app/model/car_model.dart';
import 'package:car_app/widgets/default_buton.dart';
import 'package:flutter/material.dart';

import '../../konstants.dart';
import '../../size_config.dart';

class Bottom extends StatelessWidget {
  final CarModel carModel;

  const Bottom({required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'OverView',
              style: TextStyle(
                  color: kBgColor, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              carModel.price,
              style: TextStyle(
                  color: kBgColor, fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          overview(carModel.text1, Icons.speed),
          overview(
            carModel.text2,
            Icons.car_rental,
          )
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          overview(carModel.text3, Icons.warning),
          overview(carModel.text4, Icons.chair),
        ]),
        DefaulatButton(text: 'Rent')
      ],
    );
  }

  Container overview(String text, IconData icon) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateHeight(10)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateWidth(10), vertical: 10),
      width: SizeConfig.screenWidth! * 0.4,
      height: SizeConfig.screenHeight! * 0.08,
      decoration: BoxDecoration(
          // color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: kPrimaryColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: getProportionateWidth(30),
            height: getProportionateHeight(30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: kBgColor),
            child: Icon(
              icon,
              color: kCyanColor,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: kBgColor, fontSize: 18),
          )
        ],
      ),
    );
  }
}
