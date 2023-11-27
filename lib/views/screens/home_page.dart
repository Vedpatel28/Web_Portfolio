// ignore_for_file: must_be_immutable


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
              height: s.shortestSide * 0.45,
              width: s.width,
              decoration: BoxDecoration(
                color: MyColor.darkBackGrounds,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: s.width * 0.1),
                  Container(
                    width: s.width * 0.14,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColor.lightBackGround,
                        width: s.longestSide * 0.006,
                      ),
                      shape: BoxShape.circle,
                      // image: const DecorationImage(
                      //   image: NetworkImage(
                      //     "",
                      //   ),
                      // ),
                    ),
                  ),
                  SizedBox(width: s.width * 0.1),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: s.height * 0.14),
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
                            color: MyColor.subTitleText,
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
              height: s.height*0.32,
              width: s.width,
              padding: EdgeInsets.all(s.height * 0.02),
              decoration: BoxDecoration(
                color: MyColor.lightBackGround,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
              decoration: BoxDecoration(color: MyColor.midBackGrounds),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(height: s.height * 0.01),
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
                      // Chatting App 💬
                      InkWell(
                        hoverDuration: const Duration(
                          milliseconds: 200,
                        ),
                        onHover: (value) {
                          setState(() {
                            workHoverColorChattingApp = value;
                          });
                        },
                        onTap: () {
                          setState(() {
                            workHoverColorChattingApp =
                                !workHoverColorChattingApp;
                          });
                          launchUrl(
                            Uri.parse(
                              "https://github.com/Vedpatel28/chat_app_firebase",
                            ),
                          );
                        },
                        child: Ink(
                          child: Container(
                            height: s.height * 0.4,
                            width: s.width * 0.2,
                            decoration: BoxDecoration(
                              color:  workHoverColorChattingApp
                                  ? MyColor.darkBackGrounds
                                  : MyColor.lightBackGround,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(1.4, 1),
                                  color:  workHoverColorChattingApp
                                      ? MyColor.lightBackGround
                                      : MyColor.darkBackGrounds,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: s.height * 0.012),
                                Text(
                                  "Chatting App 💬",
                                  style: GoogleFonts.timmana(
                                    textStyle: MyTextStyle.titleBold,
                                    color: MyColor.subTitleText,
                                    fontSize: s.longestSide * 0.014,
                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
                      // Weather Checker ☁️
                      InkWell(
                        hoverDuration: const Duration(
                          milliseconds: 200,
                        ),
                        onHover: (value) {
                          setState(() {
                            workHoverColorWeatherApp = value;
                          });
                        },
                        onTap: () {
                          setState(() {
                            workHoverColorWeatherApp =
                            !workHoverColorWeatherApp;
                          });
                          launchUrl(
                            Uri.parse(
                              "https://github.com/Vedpatel28/weather_app",
                            ),
                          );
                        },
                        child: Ink(
                          child: Container(
                            height: s.height * 0.4,
                            width: s.width * 0.2,
                            decoration: BoxDecoration(
                              color:  workHoverColorWeatherApp
                                  ? MyColor.darkBackGrounds
                                  : MyColor.lightBackGround,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(2, 1.6),
                                  color:  workHoverColorWeatherApp
                                      ? MyColor.lightBackGround
                                      : MyColor.darkBackGrounds,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: s.height * 0.012),
                                Text(
                                  "Weather Checker ☁️",
                                  style: GoogleFonts.timmana(
                                    textStyle: MyTextStyle.titleBold,
                                    fontSize: s.longestSide * 0.014,
                                    color: MyColor.subTitleText,
                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
                      // Wallpaper App 🖼️
                      InkWell(
                        hoverDuration: const Duration(
                          milliseconds: 200,
                        ),
                        onHover: (value) {
                          setState(() {
                            workHoverColorWallpaperApp = value;
                          });
                        },
                        onTap: () {
                          setState(() {
                            workHoverColorWallpaperApp =
                            !workHoverColorWallpaperApp;
                          });
                          launchUrl(
                            Uri.parse(
                              "https://github.com/Vedpatel28/wallpaper_app",
                            ),
                          );
                        },
                        child: Ink(
                          child: Container(
                            height: s.height * 0.4,
                            width: s.width * 0.2,
                            decoration: BoxDecoration(
                              color:  workHoverColorWallpaperApp
                                  ? MyColor.darkBackGrounds
                                  : MyColor.lightBackGround,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(2, 1.6),
                                  color:  workHoverColorWallpaperApp
                                      ? MyColor.lightBackGround
                                      : MyColor.darkBackGrounds,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: s.height * 0.012),
                                Text(
                                  "Wallpaper App 🖼️",
                                  style: GoogleFonts.timmana(
                                    textStyle: MyTextStyle.titleBold,
                                    fontSize: s.longestSide * 0.014,
                                    color: MyColor.subTitleText,
                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
                      // Media Player App 🎶
                      InkWell(
                        hoverDuration: const Duration(
                          milliseconds: 200,
                        ),
                        onHover: (value) {
                          setState(() {
                            workHoverColorMediaPlayer = value;
                          });
                        },
                        onTap: () {
                          setState(() {
                            workHoverColorMediaPlayer =
                            !workHoverColorMediaPlayer;
                          });
                          launchUrl(
                            Uri.parse(
                              "https://github.com/Vedpatel28/media_player_app",
                            ),
                          );
                        },
                        child: Ink(
                          child: Container(
                            height: s.height * 0.4,
                            width: s.width * 0.2,
                            decoration: BoxDecoration(
                              color:  workHoverColorMediaPlayer
                                  ? MyColor.darkBackGrounds
                                  : MyColor.lightBackGround,
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(2, 1.6),
                                  color:  workHoverColorMediaPlayer
                                      ? MyColor.lightBackGround
                                      : MyColor.darkBackGrounds,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: s.height * 0.012),
                                Text(
                                  "Media Player App 🎶",
                                  style: GoogleFonts.timmana(
                                    textStyle: MyTextStyle.titleBold,
                                    fontSize: s.longestSide * 0.014,
                                    color: MyColor.subTitleText,
                                    fontWeight: FontWeight.bold,
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
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Service
            Container(
              height: s.height * 0.6,
              width: s.width,
              decoration: BoxDecoration(color: MyColor.darkBackGrounds),
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
      backgroundColor: MyColor.white,
    );
  }
}
