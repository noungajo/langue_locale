import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:reenamuna/app/modules/home/widgets/liste_lecture_objects_mois.dart';
import 'package:reenamuna/app/modules/home/widgets/liste_lecture_objects_premier_mot.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/string.dart';
import '../../../../constants/style.dart';
import '../../lecture/lecture.dart';
import '../../lecture/lecture_controller.dart';
import 'liste_lecture_objects_animaux.dart';
import 'liste_lecture_objects_compter.dart';
import 'liste_lecture_objects_fruit.dart';



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
          currentAccountPicture:Image.asset(logoReenamuna),
          
        ),
        
      
            Padding(
              padding:  EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
               leading: Lottie.asset(lottiePremierMot,width: drawericonWidth,fit: BoxFit.cover),
                title:  Text('premier_mot'.tr,style: bodySmallStyle,),
                onTap: () {
                  
                  Navigator.pop(context);
                  lectureController.setCurrentListeLecture(listeLecturePremierMot);
                  Get.off(() =>  Lecture(titre:'premier_mot'));
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
           Get.off(() =>  Lecture(titre:'animaux'));
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
            Get.off(() =>  Lecture(titre: 'animaux',));
            
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
Get.off(() =>  Lecture(titre:'fruit'));
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
                  Navigator.pop(context);
                  Get.off(() =>  Lecture(titre:'mois'));
                },
              ),
            ),
          ],
        ),
      );
}

