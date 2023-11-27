// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_2e055/utils/color_utils.dart';
import 'package:portfolio_website_2e055/utils/text_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  bool colorCheck = true;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        // title: Text(
        //   "Portfolio",
        //   style: GoogleFonts.lora(
        //     textStyle: MyTextStyle.logoText,
        //   ),
        // ),
        // actions: [
        //   Text("Home", style: MyTextStyle.extraBold),
        //   SizedBox(width: s.width * 0.02),
        //   Text("Portfolio", style: MyTextStyle.extraBold),
        //   SizedBox(width: s.width * 0.02),
        //   Text("About", style: MyTextStyle.extraBold),
        //   SizedBox(width: s.width * 0.02),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Introduction / Profile Info
            Container(
              height: s.height * 0.5,
              decoration: BoxDecoration(
                color: MyColor.darkBackGrounds,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: s.width * 0.1),
                  Container(
                    height: s.height * 0.3,
                    width: s.width * 0.14,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.lightBackGround,
                        width: s.longestSide * 0.006,
                      ),
                      shape: BoxShape.circle,
                      // image: const DecorationImage(
                      //   image: AssetImage(
                      //     "assets/images/ved_patel.png",
                      //   ),
                      // ),
                    ),
                  ),
                  SizedBox(width: s.width * 0.1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: s.height*0.14),
                      SizedBox(
                        width: s.width * 0.6,
                        child: Text(
                          "Hello !",
                          style: GoogleFonts.timmana(
                            textStyle: MyTextStyle.titleItalic,
                            fontSize: s.longestSide * 0.02,
                          ),
                        ),
                      ),
                      SizedBox(height: s.height * 0.01),
                      SizedBox(
                        width: s.width * 0.6,
                        child: Text(
                          "I'm Ved Patel",
                          style: GoogleFonts.timmana(
                            fontSize: s.longestSide * 0.02,
                            textStyle: MyTextStyle.titleBold,
                          ),
                        ),
                      ),
                      SizedBox(height: s.height * 0.02),
                      SizedBox(
                        width: s.width * 0.6,
                        child: Text(
                          "I'm Flutter Developer with some skill's Like figma , firebase , DataBase & \nmany more...",
                          style: GoogleFonts.timmana(
                            fontSize: s.longestSide * 0.012,
                            textStyle: MyTextStyle.smallBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // About
            Container(
              width: s.width,
              padding: EdgeInsets.all(s.height * 0.02),
              decoration: BoxDecoration(
                color: MyColor.lightBackGround,
              ),
              child: Column(
                children: [
                  Text(
                    "About",
                    style: GoogleFonts.underdog(
                      fontSize: s.longestSide * 0.02,
                      textStyle: MyTextStyle.titleBold,
                    ),
                  ),
                  SizedBox(height: s.height * 0.03),
                  SizedBox(
                    width: s.width * 0.6,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Hi I’am ved Patel, 18 years old Person and This person has a lot of knowledge of Flutter.I'm not afraid to take on new challenges and embrace failures as opportunities to learn and improve. I am committed to delivering high-quality, efficient, and user-friendly applications that provide real value to end-users.",
                      style: GoogleFonts.timmana(
                        fontSize: s.longestSide * 0.011,
                        textStyle: MyTextStyle.smallBold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Work
            Container(
              height: s.height * 0.6,
              width: s.width,
              decoration: BoxDecoration(),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Text(
                    "Work",
                    style: GoogleFonts.underdog(
                      fontSize: s.longestSide * 0.02,
                      textStyle: MyTextStyle.titleBold,
                    ),
                  ),
                  SizedBox(height: s.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: s.height * 0.4,
                        width: s.width * 0.2,
                        decoration: BoxDecoration(
                          color: colorCheck
                              ? MyColor.grayBackGroundText
                              : MyColor.black,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(2, 1.6),
                              color: MyColor.headerBGColor,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: s.height * 0.012),
                            TextButton(
                              onPressed: () {
                                launchUrl(
                                  Uri.parse(
                                    "https://github.com/Vedpatel28/chat_app_firebase",
                                  ),
                                );
                              },
                              child: Text(
                                "Chatting App 💬",
                                style: TextStyle(
                                  color: MyColor.darkBackGround,
                                  fontSize: s.longestSide * 0.014,
                                  shadows: [
                                    BoxShadow(
                                      offset: Offset(1.4, 0.9),
                                      color: MyColor.headerBGColor,
                                    ),
                                  ],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Text(
                              "▶  Fire Base",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Multi User Support",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Google Authentication",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Live Chat",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Chat Short by Time",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Chat Perform CRUD Operation",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  State Management ( GetX )",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: s.height * 0.4,
                        width: s.width * 0.2,
                        decoration: BoxDecoration(
                          color: MyColor.grayBackGroundText,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 1.6),
                              color: MyColor.headerBGColor,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: s.height * 0.012),
                            TextButton(
                              onPressed: () {
                                launchUrl(
                                  Uri.parse(
                                    "https://github.com/Vedpatel28/weather_app",
                                  ),
                                );
                              },
                              child: Text(
                                "Weather Checker ☁️",
                                style: TextStyle(
                                  color: MyColor.darkBackGround,
                                  fontSize: s.longestSide * 0.014,
                                  shadows: [
                                    BoxShadow(
                                      offset: Offset(1.4, 0.9),
                                      color: MyColor.headerBGColor,
                                    ),
                                  ],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Text(
                              "▶  Api",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Current Time Weather",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Shared Preferences",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  State Management ( Provider )",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Connectivity Check",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  History",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: s.height * 0.4,
                        width: s.width * 0.2,
                        decoration: BoxDecoration(
                          color: MyColor.grayBackGroundText,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 1.6),
                              color: MyColor.headerBGColor,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: s.height * 0.012),
                            TextButton(
                              onPressed: () {
                                launchUrl(
                                  Uri.parse(
                                    "https://github.com/Vedpatel28/wallpaper_app",
                                  ),
                                );
                              },
                              child: Text(
                                "Wallpaper App 🖼️",
                                style: TextStyle(
                                  color: MyColor.darkBackGround,
                                  fontSize: s.longestSide * 0.014,
                                  shadows: [
                                    BoxShadow(
                                      offset: Offset(1.4, 0.9),
                                      color: MyColor.headerBGColor,
                                    ),
                                  ],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Text(
                              "▶  Api",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  High Quality Wall-Paper",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Multiple Categories",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Set Choice Wise",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  State Management ( Provider )",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Searching Functionality",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: s.height * 0.4,
                        width: s.width * 0.2,
                        decoration: BoxDecoration(
                          color: MyColor.grayBackGroundText,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 1.6),
                              color: MyColor.headerBGColor,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: s.height * 0.012),
                            TextButton(
                              onPressed: () {
                                launchUrl(
                                  Uri.parse(
                                    "https://github.com/Vedpatel28/media_player_app",
                                  ),
                                );
                              },
                              child: Text(
                                "Media Player App 🎶",
                                style: TextStyle(
                                  color: MyColor.darkBackGround,
                                  fontSize: s.longestSide * 0.014,
                                  shadows: [
                                    BoxShadow(
                                      offset: Offset(1.4, 0.9),
                                      color: MyColor.headerBGColor,
                                    ),
                                  ],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Text(
                              "▶  State Management ( provider )",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  Song / Video Player",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  TabBarView Implemented",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Text(
                              "▶  CarouselSlider",
                              style: GoogleFonts.timmana(
                                fontSize: s.longestSide * 0.01,
                                textStyle: MyTextStyle.smallBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: s.height * 0.02),
          ],
        ),
      ),
      backgroundColor: MyColor.white,
    );
  }
}
