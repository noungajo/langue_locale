import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/string.dart';
import '../../../../constants/style.dart';
import '../../lecture/lecture.dart';
import '../../lecture/lecture_controller.dart';
import 'liste_lecture_objects_animaux.dart';
import 'liste_lecture_objects_compter.dart';
import 'liste_lecture_objects_fruit.dart';
import 'liste_lecture_objects_mois.dart';
import 'liste_lecture_objects_premier_mot.dart';



Drawer drawer (BuildContext context){
  var lectureController = Get.find<LectureController>();
  return Drawer(
      child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
             UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: lightBackgroundDrawercolor),
          accountName:Text(
              "nom_projet".tr,
              style: titleDrawerStyle,
            ),
          
          accountEmail: const Text(
            "",
          ),
          currentAccountPicture:InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child:Image.asset(logoReenamuna,height: imageHeight,)),
          
        ),
        
      
            Padding(
              padding:  EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
               leading: Lottie.asset(lottiePremierMot,width: drawericonWidth,fit: BoxFit.cover),
                title:  Text('premier_mot'.tr,style: bodySmallStyle,),
                onTap: () {
                  
                  Navigator.pop(context);
                  lectureController.setCurrentListeLecture(listeLecturePremierMot);
                  lectureController.setCurrentTitle('premier_mot');
                  
                  Get.off(() =>  Lecture());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
                leading: Lottie.asset(lottieDialogue,width: drawericonWidth),
                title:  Text('dialogue'.tr,style: bodySmallStyle,),
                onTap: () {
                  Navigator.pop(context);
                  Get.toNamed("/dialog");
                },
              ),
            ),
             Padding(
               padding: EdgeInsets.only(bottom: itemSpacer),
               child: ListTile(
               leading: Lottie.asset(lottieNombre,width: drawericonWidth),
                title:  Text('compter'.tr,style: bodySmallStyle,),
                onTap: () {
                   Navigator.pop(context);
                   lectureController.setCurrentListeLecture(listeLectureNombre);
                  lectureController.setCurrentTitle('compter');
           Get.off(() =>  Lecture());
                },
                       ),
             ),
            Padding(
              padding: EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
                leading: Lottie.asset(lottieAnimaux,width: drawericonWidth),
                title:  Text('animaux'.tr,style: bodySmallStyle,),
                onTap: () {
              Navigator.pop(context);
              lectureController.setCurrentListeLecture(listeLectureAnimaux);
                  lectureController.setCurrentTitle('animaux');
            Get.off(() =>  Lecture());
            
                },
              ),
            ), 
            Padding(
              padding: EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
               leading: Lottie.asset(lottieFruit,width: drawericonWidth),
                title:  Text('fruit'.tr,style: bodySmallStyle,),
                onTap: () {
                  
              Navigator.pop(context);
               lectureController.setCurrentListeLecture(listeLectureFruit);
                  lectureController.setCurrentTitle('fruit');
Get.off(() =>  Lecture());
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
                leading: Lottie.asset(lottieMoisAnnee,width: drawericonWidth),
                title:  Text('mois'.tr,style: bodySmallStyle,),
                onTap: () {
                  lectureController.setCurrentListeLecture(listeLectureMois);
                  lectureController.setCurrentTitle('mois');
                  Navigator.pop(context);
                  Get.off(() =>  Lecture());
                },
              ),
            ),
          ],
        ),
      );
}

