import 'package:flutter/material.dart';
import 'package:portfolio_website_2e055/utils/color_utils.dart';

class MyTextStyle {
  static TextStyle extraBold = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 22,
    color: MyColor.darkBackGround,
    shadows: [
      BoxShadow(
        offset: const Offset(1.2, 0.6),
        color: MyColor.white,
      ),
    ],
  );

  static TextStyle logoText = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 32,
    color: MyColor.darkBackGround,
    shadows: [
      BoxShadow(
        offset: const Offset(1.2, 0.6),
        color: MyColor.white,
      ),
    ],
  );

  static TextStyle titleBold = TextStyle(
    fontWeight: FontWeight.w700,
    decorationColor: Colors.black,
    color: MyColor.titleText,
  );

  static TextStyle smallBold = TextStyle(
    fontWeight: FontWeight.w600,
    color: MyColor.subText,
  );

  static TextStyle titleItalic = TextStyle(
    fontWeight: FontWeight.w400,
    color: MyColor.titleText,
  );

  static TextStyle bgText = TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 35,
    color: MyColor.darkBackGround,
  );

  static TextStyle normalText = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: MyColor.darkBackGround,
  );
}
