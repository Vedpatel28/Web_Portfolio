// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_2e055/utils/color_utils.dart';
import 'package:portfolio_website_2e055/utils/text_utils.dart';

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
        controller: ScrollController(
          initialScrollOffset: 1800,
        ),
        child: Column(
          children: [
            // Big Developer   I'ma    Full Stack Software Developer
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
                            fontSize: s.width * 0.015,
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
            SizedBox(height: s.height * 0.6),
            // Pitcher BGFrame  -Image
            // ABOUT ME
            Row(
              children: [
                Stack(
                  children: [
                    // Pitcher BG Frame
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
                    // Image
                    Transform.translate(
                      offset: const Offset(110, 120),
                      child: Container(
                        height: s.height * 0.6,
                        width: s.width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
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
                SizedBox(width: s.width * 0.14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: s.height * 0.4),
                    Text(
                      "ABOUT ME",
                      style: GoogleFonts.notoSerifMakasar(
                        textStyle: MyTextStyle.aboutMe,
                        fontSize: s.width * 0.02,
                      ),
                    ),
                    SizedBox(height: s.height * 0.04),
                    SizedBox(
                      width: s.width * 0.4,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                        style: GoogleFonts.roboto(
                          textStyle: MyTextStyle.aboutDetail,
                          fontSize: s.width * 0.014,
                        ),
                      ),
                    ),
                    SizedBox(height: s.height * 0.04),
                    Row(
                      children: [
                        InkWell(
                          child: Ink(
                            child: Container(
                              height: s.height * 0.08,
                              width: s.width * 0.12,
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
                                "HIRE ME",
                                style: GoogleFonts.bitter(
                                  fontSize: s.width * 0.015,
                                  fontWeight: FontWeight.bold,
                                  color: MyColor.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: s.width * 0.03),
                        InkWell(
                          child: Ink(
                            child: Container(
                              height: s.height * 0.08,
                              width: s.width * 0.12,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  width: 3,
                                  style: BorderStyle.solid,
                                  color: MyColor.gradientEnd,
                                ),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "RESUME",
                                style: GoogleFonts.bitter(
                                  fontSize: s.width * 0.015,
                                  fontWeight: FontWeight.bold,
                                  color: MyColor.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: s.height * 0.2),
            Container(
              width: s.width * 0.98,
              height: s.height * 2,
              decoration: BoxDecoration(
                color: MyColor.gradientStart.withOpacity(0.2),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: s.height*0.03),
                  Text(
                    "PORTFOLIO",
                    style: GoogleFonts.notoSerifMakasar(
                      textStyle: MyTextStyle.aboutMe,
                      fontSize: s.width * 0.02,
                    ),
                  ),
                  SizedBox(height: s.height * 0.02),
                  Row(
                    children: [
                      SizedBox(width: s.width * 0.03),
                      Column(
                        children: [
                          Align(
                            alignment: const Alignment(-0.9, 0.2),
                            child: Text(
                              "PROJECT 1",
                              style: GoogleFonts.notoSerifMakasar(
                                textStyle: MyTextStyle.project1,
                                fontSize: s.width * 0.02,
                              ),
                            ),
                          ),
                          SizedBox(height: s.height * 0.03),
                          Align(
                            alignment: const Alignment(-0.9, 120),
                            child: Text(
                              "Chatting Mobile App",
                              style: GoogleFonts.roboto(
                                textStyle: MyTextStyle.aboutMe,
                                fontSize: s.width * 0.02,
                              ),
                            ),
                          ),
                          SizedBox(height: s.height * 0.01),
                          Align(
                            alignment: const Alignment(-0.86, 120),
                            child: SizedBox(
                              width: s.width * 0.4,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
                                style: GoogleFonts.roboto(
                                  textStyle: MyTextStyle.aboutDetail,
                                  fontSize: s.width * 0.014,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: s.height * 0.03),
                          Align(
                            alignment: const Alignment(-0.86, 120),
                            child: SizedBox(
                              width: s.width * 0.4,
                              child: Text(
                                "⇝   Read more",
                                style: GoogleFonts.roboto(
                                  textStyle: MyTextStyle.aboutMe,
                                  fontSize: s.width * 0.014,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          // Pitcher BG Frame
                          Transform.translate(
                            offset: const Offset(160, 140),
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
                          // Image
                          Transform.translate(
                            offset: const Offset(200, 100),
                            child: Container(
                              height: s.height * 0.6,
                              width: s.width * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
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
                ],
              ),
            ),
            SizedBox(height: s.height * 0.03),
          ],
        ),
      ),
      backgroundColor: MyColor.backGround,
    );
  }
}
