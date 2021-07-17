import 'package:car_app/konstants.dart';
import 'package:car_app/model/car_model.dart';
import 'package:car_app/size_config.dart';
import 'package:flutter/material.dart';

import 'car_model_card.dart';
import 'search_bar.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          SearchBar(),
          // BuildCircle(),
          Container(
            margin: EdgeInsets.only(
                right: getProportionateWidth(15),
                left: getProportionateWidth(15),
                top: getProportionateHeight(10),
                bottom: getProportionateHeight(0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Cars',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Container(
                  width: getProportionateWidth(40),
                  height: getProportionateHeight(40),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 4),
                          blurRadius: 5,
                          color: kCyanColor.withOpacity(0.5))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: kCyanColor.withOpacity(0.8),
                    border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: Icon(
                    Icons.filter_alt,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Column(
            children: List.generate(
              carmodel.length,
              (index) => CarModelCard(
                carModel: carmodel[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
