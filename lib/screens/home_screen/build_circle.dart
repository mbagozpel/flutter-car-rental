import 'package:flutter/material.dart';

import '../../konstants.dart';
import '../../size_config.dart';

class BuildCircle extends StatelessWidget {
  final Color lightGreen = kDecorationColor.withOpacity(0.9);
  Container buildCircle({String? text, Color? color, bool isImage = false}) {
    return Container(
        width: getProportionateWidth(55),
        height: getProportionateHeight(60),
        padding: EdgeInsets.all(
          getProportionateWidth(5),
        ),
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateWidth(10),
            vertical: getProportionateHeight(10)),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 5,
                color: kCyanColor.withOpacity(0.5)),
            BoxShadow(
                offset: Offset(-5, -5),
                blurRadius: 5,
                color: kCyanColor.withOpacity(0.05)),
          ],
        ),
        child: Container(
          width: getProportionateWidth(50),
          height: getProportionateHeight(55),
          padding: EdgeInsets.all(getProportionateWidth(5)),
          decoration: BoxDecoration(
              color: isImage ? Colors.white54 : kDecorationColor,
              shape: BoxShape.circle),
          child: isImage
              ? Image.asset(
                  text!,
                  width: getProportionateWidth(20),
                )
              : Center(
                  child: Text(
                    text!,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        buildCircle(text: 'All', color: kDecorationColor),
        buildCircle(
            isImage: true, text: 'assets/icons/bugatti.png', color: lightGreen),
        buildCircle(
            isImage: true, text: 'assets/icons/lambo.png', color: lightGreen),
        buildCircle(
            isImage: true,
            text: 'assets/icons/maseratti.png',
            color: lightGreen),
        buildCircle(
            isImage: true, text: 'assets/icons/lexus.png', color: lightGreen),
      ]),
    );
  }
}
