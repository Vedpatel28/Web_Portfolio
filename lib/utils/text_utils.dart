import 'package:flutter/material.dart';
import 'package:portfolio_website_2e055/utils/color_utils.dart';

class MyTextStyle {

  static TextStyle bigDeveloperText = TextStyle(
    fontWeight: FontWeight.w900,
    color: MyColor.digDeveloperColor.withOpacity(0.04),
  );

  static TextStyle logoText = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 32,
    color: MyColor.white,
    shadows: [
      BoxShadow(
        offset: const Offset(1.2, 0.6),
        color: MyColor.white,
      ),
    ],
  );

  static TextStyle iAmStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: MyColor.digDeveloperColor.withOpacity(0.5),
  );

  static TextStyle jobTitle = TextStyle(
    fontWeight: FontWeight.w900,
    height: -1,
    letterSpacing: 3,
    color: MyColor.white,
  );

  static TextStyle aboutMe = TextStyle(
    fontWeight: FontWeight.w700,
    color: MyColor.white,
  );
  
  static TextStyle aboutDetail = TextStyle(
    fontWeight: FontWeight.w500,
    color: MyColor.subTitleTextColor.withOpacity(0.6),
  );

  static TextStyle project1 = TextStyle(
    fontWeight: FontWeight.w400,
    color: MyColor.gradientStart,
  );
}
