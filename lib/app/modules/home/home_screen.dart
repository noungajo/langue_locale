import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/size.dart';
import '../../../constants/string.dart';
import '../../utils/app_bar.dart';
import '../lecture/lecture_controller.dart';
import 'widgets/drawer.dart';
import 'widgets/home_item.dart';
import 'widgets/liste_lecture_objects.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   var lectureController = Get.find<LectureController>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        // Lorsque vous souhaitez quitter l'application, par exemple dans un bouton de votre interface utilisateur, vous pouvez appeler :
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        appBar: appBar("nom_projet".tr,context),
        drawer: SizedBox(
          width: drawerWidth,
          child: drawer(context)),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(bodyPadding),
            child: Wrap(
              spacing:8.w,
              children: [
              HomeItem(lottieIcon: lottiePremierMot,textDecoration: 'premier_mot'.tr,callback:(){}),
              HomeItem(lottieIcon: lottieDialogue,textDecoration: 'dialogue'.tr,callback:(){
                 //ici sera charger les données des dialogues mots pour ouvrir l'interface de dialogue
                Get.toNamed("/dialog");
              }),
           
            HomeItem(lottieIcon: lottieAnimaux,textDecoration: 'animaux'.tr,callback:(){}),
            HomeItem(lottieIcon: lottieNombre,textDecoration: 'compter'.tr,callback:(){
              lectureController.setCurrentListeLecture(listeLectureNombre);
              Get.toNamed("/lecture");}),
           HomeItem(lottieIcon: lottieFruit,textDecoration: 'fruit'.tr,callback:(){}),
            HomeItem(lottieIcon: lottieMoisAnnee,textDecoration: 'mois'.tr,callback:(){}),
          
       
            ]),
          ),
        ),
      ),
    );
  }
}
