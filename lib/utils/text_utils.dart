import 'package:adept_lodge_401904/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    fontWeight: FontWeight.w900,
    fontSize: 38,
    color: MyColor.darkBackGround,
  );


  static TextStyle smallBold = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: MyColor.darkBackGround,
  );

  static TextStyle titleItalic = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    color: MyColor.darkBackGround,
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
