import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenHeight;
  static double? screenWidth;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
  }
}

double getProportionateHeight(double height) {
  double? screenHeight = SizeConfig.screenHeight;
  //Iphon 12 screen size
  return (height) / 812 * screenHeight!;
}

double getProportionateWidth(double width) {
  double? screenWidth = SizeConfig.screenWidth;
  //Iphone 12 screen size
  return (width) / 375 * screenWidth!;
}
