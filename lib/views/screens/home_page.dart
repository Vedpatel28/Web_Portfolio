// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_2e055/utils/color_utils.dart';
import 'package:portfolio_website_2e055/utils/text_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
                        fontSize: s.longestSide * 0.14,
                      ),
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
                      fontSize: s.aspectRatio * 0.08,
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
                    hoverDuration: const Duration(
                      milliseconds: 200,
                    ),
                    // hoverColor: Colors.black,
                    onHover: (value) {
                      setState(() {
                        workHoverColorChattingApp = value;
                      });
                    },
                    onTap: () {
                      setState(() {
                        workHoverColorChattingApp = !workHoverColorChattingApp;
                      });
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: LinearGradient(
                          colors: [
                            workHoverColorChattingApp
                                ? MyColor.gradientStart.withOpacity(0.1)
                                : MyColor.gradientStart,
                            workHoverColorChattingApp
                                ? MyColor.gradientEnd.withOpacity(0.1)
                                : MyColor.gradientEnd,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Container(
                        height: s.height * 0.1,
                        width: s.width * 0.2,
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
            // Pitcher BGFrame Image / ABOUT ME
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
                              "https://media.licdn.com/dms/image/D4D03AQERmacCpe2_TA/profile-displayphoto-shrink_800_800/0/1677295452176?e=2147483647&v=beta&t=g3q1tK6YePsaKdyF2xwH3809G1tnESfclXXdb87cWXI",
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
            // Portfolio
            Container(
              width: s.width * 0.98,
              decoration: const BoxDecoration(
                  // color: MyColor.gradientStart.withOpacity(0.2),
                  ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: s.height * 0.03),
                  Text(
                    "PORTFOLIO",
                    style: GoogleFonts.notoSerifMakasar(
                      textStyle: MyTextStyle.aboutMe,
                      fontSize: s.width * 0.02,
                    ),
                  ),
                  SizedBox(height: s.height * 0.02),
                  // Project 1
                  Align(
                    alignment: const Alignment(0, 220),
                    child: Row(
                      children: [
                        SizedBox(width: s.width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: const Offset(0, 100),
                              child: Text(
                                "PROJECT 1",
                                style: GoogleFonts.notoSerifMakasar(
                                  textStyle: MyTextStyle.project1,
                                  fontSize: s.width * 0.02,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Transform.translate(
                              offset: const Offset(0, 100),
                              child: Text(
                                "Chatting Mobile App",
                                style: GoogleFonts.roboto(
                                  textStyle: MyTextStyle.aboutMe,
                                  fontSize: s.width * 0.02,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Transform.translate(
                              offset: const Offset(0, 100),
                              child: SizedBox(
                                width: s.width * 0.4,
                                child: Text(
                                  "Firebase Miner (Chat App) is an innovative and secure mobile application developed using Flutter, aiming to provide users with a seamless two-way communication platform. The app utilizes the powerful features of Firebase Authentication and Firebase Firestore Database to ensure smooth user authentication and real-time data synchronization.",
                                  style: GoogleFonts.roboto(
                                    textStyle: MyTextStyle.aboutDetail,
                                    fontSize: s.width * 0.014,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Transform.translate(
                              offset: const Offset(0, 100),
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
                                width: s.width * 0.4,
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
                                width: s.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: MyColor.gradientEnd,
                                  // image: const DecorationImage(
                                  //   image: NetworkImage(
                                  //     "https://cdn.dribbble.com/users/162444/screenshots/5993018/media/91d75123c61046ba31e9705b30347d21.jpg?resize=400x300&vertical=center",
                                  //   ),
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: s.height * 0.25),
                  // Project 2
                  Align(
                    alignment: const Alignment(0, 220),
                    child: Row(
                      children: [
                        SizedBox(width: s.width * 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: const Offset(750, 80),
                              child: Text(
                                "PROJECT 2",
                                style: GoogleFonts.notoSerifMakasar(
                                  textStyle: MyTextStyle.project1,
                                  fontSize: s.width * 0.02,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Transform.translate(
                              offset: const Offset(750, 80),
                              child: Text(
                                "Media Player",
                                style: GoogleFonts.roboto(
                                  textStyle: MyTextStyle.aboutMe,
                                  fontSize: s.width * 0.02,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Transform.translate(
                              offset: const Offset(750, 80),
                              child: SizedBox(
                                width: s.width * 0.4,
                                child: Text(
                                  "The aim of this project is to develop a media player application using the Flutter framework that enhances the media playback experience for users. The Media Booster app will have an audio player, video player, and carousel slider functionalities along with a tab bar view. The project is designed to enhance the knowledge and skills of IT students in mobile app development using Flutter.",
                                  style: GoogleFonts.roboto(
                                    textStyle: MyTextStyle.aboutDetail,
                                    fontSize: s.width * 0.014,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Transform.translate(
                              offset: const Offset(750, 80),
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
                              offset: const Offset(-640, 100),
                              child: Container(
                                height: s.height * 0.6,
                                width: s.width * 0.4,
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
                              offset: const Offset(-600, 60),
                              child: Container(
                                height: s.height * 0.6,
                                width: s.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: MyColor.gradientEnd,
                                  // image: const DecorationImage(
                                  //   image: NetworkImage(
                                  //     "https://d3mm2s9r15iqcv.cloudfront.net/en/wp-content/uploads/old-blog-uploads/portfolio-2.jpg",
                                  //   ),
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: s.height * 0.25),
                  // Project 3
                  Align(
                    alignment: const Alignment(0, 220),
                    child: Row(
                      children: [
                        SizedBox(width: s.width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Transform.translate(
                              offset: const Offset(0, 100),
                              child: Text(
                                "PROJECT 3",
                                style: GoogleFonts.notoSerifMakasar(
                                  textStyle: MyTextStyle.project1,
                                  fontSize: s.width * 0.02,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Transform.translate(
                              offset: const Offset(0, 100),
                              child: Text(
                                "Weather App",
                                style: GoogleFonts.roboto(
                                  textStyle: MyTextStyle.aboutMe,
                                  fontSize: s.width * 0.02,
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.01),
                            Transform.translate(
                              offset: const Offset(0, 100),
                              child: SizedBox(
                                width: s.width * 0.4,
                                child: Text(
                                  "Weather App is a feature-rich weather application built using Flutter, incorporating key concepts such as API calling, Shared Preferences, and network connectivity. The app offers a comprehensive set of functionalities designed to provide users with accurate and timely weather information for cities, states, and countries.",
                                  style: GoogleFonts.roboto(
                                    textStyle: MyTextStyle.aboutDetail,
                                    fontSize: s.width * 0.014,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: s.height * 0.03),
                            Transform.translate(
                              offset: const Offset(0, 100),
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
                                width: s.width * 0.4,
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
                                width: s.width * 0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: MyColor.gradientEnd,
                                  // image: const DecorationImage(
                                  //   image: NetworkImage(
                                  //     "https://cdn.dribbble.com/users/162444/screenshots/5993018/media/91d75123c61046ba31e9705b30347d21.jpg?resize=400x300&vertical=center",
                                  //   ),
                                  //   fit: BoxFit.cover,
                                  // ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: s.height * 0.25),
            // EXPERIENCE
            Column(
              children: [
                // EXPERIENCE
                Text(
                  "EXPERIENCE",
                  style: GoogleFonts.notoSerifMakasar(
                    textStyle: MyTextStyle.aboutMe,
                    fontSize: s.width * 0.02,
                  ),
                ),
                SizedBox(height: s.height * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Dart
                    Container(
                      width: s.width * 0.05,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Dart-logo.png/800px-Dart-logo.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // Flutter
                    Container(
                      width: s.width * 0.05,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://static-00.iconduck.com/assets.00/flutter-icon-826x1024-4ksxnd3g.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // Fire Base
                    Container(
                      width: s.width * 0.05,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // Data Base
                    Container(
                      width: s.width * 0.05,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://iconape.com/wp-content/png_logo_vector/database.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: s.height * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // C Language
                    Container(
                      width: s.width * 0.05,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/C_Programming_Language.svg/695px-C_Programming_Language.svg.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // C ++
                    Container(
                      width: s.width * 0.05,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/3/32/C%2B%2B_logo.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // Figma
                    Container(
                      width: s.width * 0.05,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/a/ad/Figma-1-logo.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    // PHP
                    Container(
                      width: s.width * 0.05,
                      height: s.height * 0.1,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/2560px-PHP-logo.svg.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: s.height * 0.1),
            // Contacts
            GlassmorphicContainer(
              width: s.width * 1,
              height: s.height * 0.15,
              blur: 20,
              border: 2,
              borderRadius: 2,
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  MyColor.gradientStart.withOpacity(0.2),
                  MyColor.gradientEnd.withOpacity(0.2),
                ],
                stops: const [
                  0.1,
                  1,
                ],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  MyColor.gradientStart.withOpacity(0.1),
                  MyColor.gradientEnd.withOpacity(0.1),
                ],
              ),
              alignment: Alignment.center,
              // Contacts
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Contacts
                  Text(
                    "Contacts",
                    style: GoogleFonts.roboto(
                      textStyle: MyTextStyle.aboutMe,
                      fontSize: s.width * 0.014,
                    ),
                  ),
                  SizedBox(height: s.height*0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(width: s.width*0.03,),
                      // linkedin
                      Container(
                        width: s.width * 0.05,
                        height: s.height * 0.04,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/640px-LinkedIn_logo_initials.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      // Name
                      Text(
                        "Ved Patel",
                        style: GoogleFonts.roboto(
                          textStyle: MyTextStyle.aboutDetail,
                        ),
                      ),
                      // Git Hub
                      Container(
                        width: s.width * 0.05,
                        height: s.height * 0.04,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/25/25231.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),// Name
                      Text(
                        "ved_patel_28",
                        style: GoogleFonts.roboto(
                          textStyle: MyTextStyle.aboutDetail,
                        ),
                      ),
                      // Contacts
                      Container(
                        width: s.width * 0.05,
                        height: s.height * 0.04,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/b/b7/Google_Contacts_logo.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      // Number
                      Text(
                        "+91 9909200558",
                        style: GoogleFonts.roboto(
                          textStyle: MyTextStyle.aboutDetail,
                        ),
                      ),
                      // E-mail
                      Container(
                        width: s.width * 0.05,
                        height: s.height * 0.04,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://static-00.iconduck.com/assets.00/gmail-icon-512x511-fih5xfbp.png",
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      // Email
                      Text(
                        "pved82802@gmail.com",
                        style: GoogleFonts.roboto(
                          textStyle: MyTextStyle.aboutDetail,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: MyColor.backGround,
    );
  }
}
