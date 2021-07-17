import 'package:car_app/konstants.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBAr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      decoration: BoxDecoration(
        color: kCyanColor.withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.1),
          )
        ],
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(20),
        //   topRight: Radius.circular(20),
        // ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: kPrimaryColor,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 30,
              ),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.car_rental,
                size: 30,
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
