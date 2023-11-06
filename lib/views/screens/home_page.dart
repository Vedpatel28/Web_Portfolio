import 'package:adept_lodge_401904/utils/color_utils.dart';
import 'package:adept_lodge_401904/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PV.",
          style: GoogleFonts.lora(
            textStyle: MyTextStyle.logoText,
          ),
        ),
        actions: [
          Text("Home", style: MyTextStyle.extraBold),
          SizedBox(width: s.width * 0.02),
          Text("Portfolio", style: MyTextStyle.extraBold),
          SizedBox(width: s.width * 0.02),
          Text("About", style: MyTextStyle.extraBold),
          SizedBox(width: s.width * 0.02),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: s.height * 0.04),
            // Introduction / Profile Info
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: s.width * 0.02),
                Stack(
                  children: [
                    Container(
                      width: s.width * 0.2,
                      height: s.height * 0.4,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.only(
                          topRight:
                              Radius.elliptical(s.height * 0.1, s.height * 0.1),
                          bottomLeft:
                              Radius.elliptical(s.height * 0.2, s.height * 0.1),
                        ),
                        border: Border.all(
                          color: Colors.white10,
                          width: 7,
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            "assets/images/brush-circle.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: s.width * 0.2,
                      height: s.height * 0.4,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.only(
                          topRight:
                              Radius.elliptical(s.height * 0.4, s.height * 0.1),
                          bottomRight:
                              Radius.elliptical(s.height * 0.3, s.height * 0.1),
                        ),
                        border: Border.all(
                          color: Colors.white60,
                          width: 7,
                        ),
                        image: const DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            "assets/images/deadpool.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    SizedBox(
                      width: s.width * 0.6,
                      child: Text(
                        "FLUTTER",
                        style: GoogleFonts.bricolageGrotesque(
                          textStyle: MyTextStyle.bgText,
                          fontSize: 120,
                          fontWeight: FontWeight.w800,
                          letterSpacing: s.width * 0.03,
                          color: MyColor.grayBackGroundText,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: s.height * 0.1),
                        SizedBox(
                          width: s.width * 0.6,
                          child: Text(
                            "Hello !",
                            style: GoogleFonts.keaniaOne(
                              textStyle: MyTextStyle.titleItalic,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(height: s.height*0.01),
                        SizedBox(
                          width: s.width * 0.6,
                          child: Text(
                            "I'm Ved Patel",
                            style: GoogleFonts.keaniaOne(
                              textStyle: MyTextStyle.titleBold,
                            ),
                          ),
                        ),
                        SizedBox(height: s.height*0.02),
                        SizedBox(
                          width: s.width * 0.6,
                          child: Text(
                            "I'm Flutter Developer with some skill's,Like figma , firebase , DataBase & \nmany more...",
                            style: GoogleFonts.keaniaOne(
                              textStyle: MyTextStyle.smallBold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: s.width * 0.02),
          ],
        ),
      ),
      backgroundColor: MyColor.white,
    );
  }
}
