import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/app_constants.dart';
import '../../../constants/size.dart';
import '../../../constants/string.dart';
import 'ouverture_controller.dart';

class Ouverture extends StatelessWidget {
  Ouverture({super.key});
  final controller = Get.put(OuvertureController());
  @override
  Widget build(BuildContext context) {
    //controller.startTimer(time);
    return Scaffold(
      
      body: Center(
        child: Container(
          padding: EdgeInsets.all(bodyPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imageOuverture,fit:BoxFit.scaleDown ,),
            Text("Reenamuna")
          ],
        )),
      ),
    );
  }
}
