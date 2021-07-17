import 'package:car_app/konstants.dart';
import 'package:car_app/model/car_model.dart';
import 'package:car_app/screens/home_screen/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/details_screen/details_screen.dart';
import 'screens/onboarding_screen/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Car Rental',
        theme: ThemeData(
            accentColor: kSecondaryColor,
            textTheme:
                GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme),
            primaryColor: kPrimaryColor),
        home: HomeScreen());
  }
}
