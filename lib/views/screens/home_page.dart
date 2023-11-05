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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: s.height * 0.09,
              color: MyColor.headerBGColor,
              child: Row(
                children: [
                  SizedBox(width: s.width * 0.1),
                  FlutterLogo(
                    size: s.height*0.07,
                  ),
                  const Spacer(),
                  Text("Home", style: MyTextStyle.extraBold),
                  SizedBox(width: s.width * 0.02),
                  Text("Portfolio", style: MyTextStyle.extraBold),
                  SizedBox(width: s.width * 0.02),
                  Text("About", style: MyTextStyle.extraBold),
                  SizedBox(width: s.width * 0.02),
                ],
              ),
            ),
            SizedBox(height: s.height * 0.04),
            Row(
              children: [
                SizedBox(width: s.width * 0.06),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(s.width * 0.01),
                      width: s.width * 0.2,
                      height: s.height * 0.4,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.elliptical(
                            s.height * 0.3,
                            s.height * 0.1,
                          ),
                          bottomLeft: Radius.elliptical(
                            s.height * 0.3,
                            s.height * 0.1,
                          ),
                          topLeft: Radius.elliptical(
                            s.height * 0.4,
                            s.height * 0.1,
                          ),
                        ),
                        border: Border.all(
                          color: Colors.white10,
                          width: 7,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/deadpool.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(s.width * 0.01),
                      width: s.width * 0.2,
                      height: s.height * 0.4,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.elliptical(
                            s.height * 0.3,
                            s.height * 0.1,
                          ),
                          bottomLeft: Radius.elliptical(
                            s.height * 0.3,
                            s.height * 0.1,
                          ),
                          topLeft: Radius.elliptical(
                            s.height * 0.4,
                            s.height * 0.1,
                          ),
                        ),
                        border: Border.all(
                          color: Colors.white10,
                          width: 7,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/deadpool.png",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: s.width * 0.2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME TO MY PORTFOLIO!",
                      style: GoogleFonts.italiana(
                        textStyle: MyTextStyle.titleItalic(
                          size: s.height * 0.6,
                        ),
                        color: MyColor.bodyTextColor,
                      ),
                    ),
                    SizedBox(height: s.height * 0.02),
                    Text(
                      "Flutter Developer",
                      style: GoogleFonts.bodoniModa(
                        textStyle: MyTextStyle.titleBold,
                      ),
                    ),
                    SizedBox(height: s.height * 0.02),
                    Text(
                      "Ved Patel",
                      style: GoogleFonts.bodoniModa(
                        textStyle: MyTextStyle.titleBold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: s.height * 0.02),
          ],
        ),
      ),
      backgroundColor: MyColor.bodyBackGround,
    );
  }
}
