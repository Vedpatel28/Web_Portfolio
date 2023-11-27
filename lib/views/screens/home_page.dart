// ignore_for_file: must_be_immutable

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_2e055/utils/color_utils.dart';
import 'package:portfolio_website_2e055/utils/text_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool workHoverColorChattingApp = false;
  bool workHoverColorWeatherApp = false;
  bool workHoverColorWallpaperApp = false;
  bool workHoverColorMediaPlayer = false;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                // Big Developer
                Transform.translate(
                  offset: const Offset(-70, 200),
                  child: Transform.rotate(
                    angle: 12,
                    child: Text(
                      "DEVELOPER",
                      style: GoogleFonts.playfairDisplay(
                          textStyle: MyTextStyle.bigDeveloperText,
                          fontSize: s.shortestSide * 0.3),
                    ),
                  ),
                ),
                // I'ma
                Transform.translate(
                  offset: const Offset(60, 120),
                  child: Text(
                    "I'ma",
                    style: GoogleFonts.bitter(
                      textStyle: MyTextStyle.iAmStyle,
                      fontSize: s.shortestSide * 0.08,
                    ),
                  ),
                ),
                // Full Stack Software Developer
                Transform.translate(
                  offset: const Offset(60, 200),
                  child: Text(
                    "Full Stack \nSoftware \nDeveloper.",
                    style: GoogleFonts.bigshotOne(
                      textStyle: MyTextStyle.jobTitle,
                      fontSize: s.shortestSide * 0.14,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(60, 580),
                  child: InkWell(
                    child: Ink(
                      child: Container(
                        height: s.height * 0.1,
                        width: s.width * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            colors: [
                              MyColor.gradientStart,
                              MyColor.gradientEnd,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Previous Projects",
                          style: GoogleFonts.bitter(
                            fontSize: s.width*0.015,
                            fontWeight: FontWeight.bold,
                            color: MyColor.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: s.height * 0.5),
            Row(
              children: [
                SizedBox(width: s.width * 0.0),
                Stack(
                  children: [
                    Transform.translate(
                      offset: const Offset(150, 160),
                      child: Container(
                        height: s.height * 0.6,
                        width: s.width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: MyColor.gradientStart,
                            width: 16,
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(110, 120),
                      child: Container(
                        height: s.height * 0.6,
                        width: s.width * 0.25,
                        decoration: BoxDecoration(
                          color: MyColor.gradientEnd,
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://static9.depositphotos.com/1005893/1105/i/450/depositphotos_11050974-stock-photo-indian-businessman.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: s.height * 0.2),
          ],
        ),
      ),
      backgroundColor: MyColor.backGround,
    );
  }
}
