import 'package:flutter/material.dart';

import '../konstants.dart';
import '../size_config.dart';

class DefaulatButton extends StatelessWidget {
  final String text;
  final Widget? widget;

  const DefaulatButton({required this.text, this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20)),
      child: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, primaryAnimation, secondaryAnimation) =>
                  widget!,
            ),
          );
        },
        minWidth: double.infinity,
        height: getProportionateHeight(50),
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          text,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
