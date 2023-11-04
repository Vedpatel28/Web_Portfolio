import 'package:adept_lodge_401904/utils/color_utils.dart';
import 'package:adept_lodge_401904/utils/text_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;

    List allName = [
      "1Assa",
      "2Assa",
      "3Assa",
      "4Assa",
      "5Assa",
      "6Assa",
      "7Assa",
      "8Assa",
      "9Assa",
      "1Assa",
      "2Assa",
      "3Assa",
      "4Assa",
      "5Assa",
      "6Assa",
      "7Assa",
      "8Assa",
      "9Assa",
      "1Assa",
      "2Assa",
      "3Assa",
      "4Assa",
      "5Assa",
      "6Assa",
      "7Assa",
      "8Assa",
      "9Assa",
    ];

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: s.height * 0.09,
            color: MyColor.bgColor,
            child: Row(
              children: [
                SizedBox(width: s.width * 0.04),
                const FlutterLogo(size: 50),
                const Spacer(),
                Text("Project's", style: MyTextStyle.extraBold),
                SizedBox(width: s.width * 0.02),
                Text("About", style: MyTextStyle.extraBold),
                SizedBox(width: s.width * 0.02),
              ],
            ),
          ),
          SizedBox(height: s.height * 0.02),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: s.width*0.2,
                height: s.height * 0.4,
                decoration: const BoxDecoration(
                  // color: Colors.blueGrey,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/circal bg profile.png",
                    ),
                  ),
                ),
              ),
              Container(
                  width: s.width*0.2,
                  height: s.height * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/deadpool.png",
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
