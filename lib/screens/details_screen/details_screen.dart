import 'package:car_app/konstants.dart';
import 'package:car_app/model/car_model.dart';
import 'package:car_app/size_config.dart';
import 'package:flutter/material.dart';

import 'bottom.dart';

class DetailsScreen extends StatelessWidget {
  final CarModel carModel;

  const DetailsScreen({required this.carModel});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: kCyanColor,
        ),
        backgroundColor: kBgColor,
        elevation: 0,
        title: Text(carModel.title),
      ),
      backgroundColor: kBgColor,
      body: SafeArea(
        bottom: false,
        child: DetailsBody(
          carModel: carModel,
        ),
      ),
    );
  }
}

class DetailsBody extends StatelessWidget {
  final CarModel carModel;

  const DetailsBody({required this.carModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateWidth(20),
                vertical: getProportionateHeight(18)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  carModel.title,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  '2017',
                  style: TextStyle(fontSize: 20, height: 1.5),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Image.asset(
              carModel.image,
              width: getProportionateWidth(350),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateWidth(20),
                vertical: getProportionateHeight(20)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: kCyanColor),
            child: Bottom(
              carModel: carModel,
            ),
          ),
        )
      ],
    );
  }
}
