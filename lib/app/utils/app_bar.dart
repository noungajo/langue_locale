import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/style.dart';

AppBar appBar(RxString title,BuildContext context,Widget changeLanguageButton){
  return AppBar(
    backgroundColor: lightAppbarColor,
    title: Obx(()=> Text(title.value.tr,style:titleMediumStyle)),
    centerTitle: true,
    actions: [

changeLanguageButton

    ],
    );
}
 
  
