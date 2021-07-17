import 'package:flutter/material.dart';

import '../../konstants.dart';
import '../../size_config.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateWidth(12),
          vertical: getProportionateHeight(20)),
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: kCyanColor.withOpacity(0.8),
          hintText: 'Search Cars',
          hintStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: Container(
            height: getProportionateHeight(52),
            child: Icon(
              Icons.search,
              size: 40,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
