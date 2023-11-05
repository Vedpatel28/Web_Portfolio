import 'package:adept_lodge_401904/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  static TextStyle extraBold = TextStyle(
    fontWeight: FontWeight.w900,
    fontFamily: "ubuntu",
    fontSize: 22,
    color: MyColor.bodyTextColor,
    shadows: [
      BoxShadow(
        offset: const Offset(1.5, 1.2),
        color: MyColor.bodyTextColor,
      ),
    ],
  );

  static TextStyle titleBold = TextStyle(
    fontWeight: FontWeight.w900,
    fontFamily: "ubuntu",
    fontSize: 26,
    color: MyColor.bodyTextColor,
    shadows: [
      BoxShadow(
        offset: const Offset(1.5, 1.2),
        color: MyColor.bodyTextColor,
      ),
    ],
  );

  static titleItalic({double size = 60}) {
    TextStyle(
      color: MyColor.white,
      fontWeight: FontWeight.w100,
      fontSize: size,
      fontFamily: 'italiana',
      shadows: [
        BoxShadow(
          offset: const Offset(1.5, 1.2),
          color: MyColor.bodyTextColor,
        ),
      ],
    );
  }

  static TextStyle normalText = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: "ubuntu",
    fontSize: 16,
    color: MyColor.bodyTextColor,
  );
}
