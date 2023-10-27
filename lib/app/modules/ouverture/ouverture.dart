import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import '../../../constants/string.dart';
import '../home/home_screen.dart';
import 'ouverture_controller.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Ouverture extends StatelessWidget {
  Ouverture({super.key});
  final controller = Get.put(OuvertureController());


  @override
  Widget build(BuildContext context) {
    controller.startTimer(time);
      var theme = Theme.of(context).textTheme;
    return Scaffold(
      
      body: Center(
        child: Container(
          padding: EdgeInsets.all(bodyPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageOuverture,fit:BoxFit.scaleDown ,),
            SizedBox(
              width: 60.w,
              child: Column(
                children: [
                  AnimatedTextKit( 
                  totalRepeatCount: 3, 
                  animatedTexts: [ 
                   
                    ScaleAnimatedText( 
                      'nom_projet'.tr, 
                      duration: Duration(milliseconds: time~/5), 
                      textStyle: theme.titleLarge?.apply(fontSizeDelta: titleLarge), 
                    ), 
                  ], 
                ), 
                  //Text("Reenamuna",style: theme.titleLarge?.apply(fontSizeDelta: titleLarge)),
                  Divider(
                    color:lightBarHomePage,
                    thickness: homeDividerThinkness,
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
