import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/string.dart';
import '../../../../constants/style.dart';
import '../../lecture/lecture_controller.dart';
import 'liste_lecture_objects.dart';



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
                  //ici sera charger les données des premier mots pour ouvrir le lecteur
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
                leading: Lottie.asset(lottieDialogue,width: drawericonWidth),
                title:  Text('dialogue'.tr,style: bodySmallStyle,),
                onTap: () {
                  //ici sera charger les données des dialogues mots pour ouvrir l'interface de dialogue
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
                   lectureController.setCurrentListeLecture(listeLectureNombre);
                   Navigator.pop(context);
              Get.toNamed("/lecture");
                },
                       ),
             ),
            Padding(
              padding: EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
                leading: Lottie.asset(lottieAnimaux,width: drawericonWidth),
                title:  Text('animaux'.tr,style: bodySmallStyle,),
                onTap: () {
                   lectureController.setCurrentListeLecture(listeLectureAnimaux);
              Navigator.pop(context);
              Get.toNamed("/lecture");
                },
              ),
            ), 
            Padding(
              padding: EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
               leading: Lottie.asset(lottieFruit,width: drawericonWidth),
                title:  Text('fruit'.tr,style: bodySmallStyle,),
                onTap: () {
                   lectureController.setCurrentListeLecture(listeLectureFruit);
              Navigator.pop(context);
              Get.toNamed("/lecture");
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: itemSpacer),
              child: ListTile(
                leading: Lottie.asset(lottieMoisAnnee,width: drawericonWidth),
                title:  Text('mois'.tr,style: bodySmallStyle,),
                onTap: () {
                  //ici sera charger les données des mois de l'année pour ouvrir le lecteur
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      );
}

