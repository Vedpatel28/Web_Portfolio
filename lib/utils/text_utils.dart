import 'package:adept_lodge_401904/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {

  static TextStyle extraBold = TextStyle(
    fontWeight: FontWeight.w900,
    fontFamily: "ubuntu",
    shadows: [
      BoxShadow(
        offset: const Offset(1.5, 1.2),
        color: MyColor.bgColor,
      ),
    ],
    fontSize: 22,
    color: MyColor.white,
  );

  static TextStyle titleBold = TextStyle(
    fontWeight: FontWeight.w900,
    fontFamily: "ubuntu",
    shadows: [
      BoxShadow(
        offset: const Offset(1.5, 1.2),
        color: MyColor.bgColor,
      ),
    ],
    fontSize: 26,
    color: MyColor.white,
  );

  static TextStyle titleItalic = TextStyle(
    fontWeight: FontWeight.w100,
    fontFamily: 'italiana',
    shadows: [
      BoxShadow(
        offset: const Offset(1.5, 1.2),
        color: MyColor.bgColor,
      ),
    ],
    fontSize: 28,
    color: MyColor.white,
  );

  static TextStyle normalText = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: "ubuntu",
    fontSize: 16,
    color: MyColor.textColor,
  );
}
