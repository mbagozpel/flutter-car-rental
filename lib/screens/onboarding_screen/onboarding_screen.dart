import 'package:car_app/konstants.dart';
import 'package:car_app/screens/home_screen/home_screen.dart';

import 'package:car_app/size_config.dart';
import 'package:car_app/widgets/default_buton.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBgColor,
      body: SafeArea(
        child: OnboardingBody(),
      ),
    );
  }
}

class OnboardingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Image.asset(
              'assets/images/image.png',
              width: SizeConfig.screenWidth! * 0.9,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontSize: 35, fontWeight: FontWeight.bold, height: 1.2),
                  children: [
                    TextSpan(text: 'Need an'),
                    TextSpan(
                        text: ' EXQUISITE',
                        style: TextStyle(color: kSecondaryColor)),
                  ],
                ),
              ),
              Text(
                'car for your occasion?',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 35, fontWeight: FontWeight.bold, height: 1.2),
              ),
              Text(
                "We've got ya...",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontSize: 35, fontWeight: FontWeight.bold, height: 1.2),
              ),
              SizedBox(
                height: getProportionateHeight(20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateWidth(30),
                ),
                child: Text(
                  "A Platform where you can comfortably rent your dream car at an affordable price. We've got cars for all type of occastions",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
        DefaulatButton(text: 'Let\'s Go', widget: HomeScreen()),
        Spacer()
      ],
    );
  }
}
