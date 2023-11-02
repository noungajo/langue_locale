import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import '../../../constants/string.dart';
import 'ouverture_controller.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Ouverture extends StatelessWidget {
  Ouverture({super.key});
  final controller = Get.put(OuvertureController());
  @override
  Widget build(BuildContext context) {
    controller.startTimer(time);
  var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.all(bodyPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageOuverture,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              width:size.width * 0.43,//60.w,
              child: Column(
                children: [
                  AnimatedTextKit(
                    totalRepeatCount: 2,
                    animatedTexts: [
                      ScaleAnimatedText(
                        'nom_projet'.tr,
                        duration: Duration(milliseconds: time ~/ 5),
                        textStyle: TextStyle(
                          fontSize: size.width * 0.07599999,
                          fontWeight: FontWeight.bold,
                          fontFamily: "lato",
                          color: lightTextColor,
                        ), 
                      ),
                    ],
                  ),
                  Divider(
                    color: lightBarHomePage,
                    thickness: size.height*0.01,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
