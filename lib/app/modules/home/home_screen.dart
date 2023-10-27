import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/size.dart';
import '../../../constants/string.dart';
import '../../utils/app_bar.dart';
import 'widgets/drawer.dart';
import 'widgets/home_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("nom_projet".tr,context),
      drawer: drawer(context),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(bodyPadding),
          child: Wrap(
            spacing:1.h,
            children: [
            HomeItem(lottieIcon: lottiePremierMot,textDecoration: 'premier_mot'.tr,callback:(){}),
            HomeItem(lottieIcon: lottieDialogue,textDecoration: 'dialogue'.tr,callback:(){
               //ici sera charger les données des dialogues mots pour ouvrir l'interface de dialogue
              Get.toNamed("/dialog");
            }),
         
          HomeItem(lottieIcon: lottieAnimaux,textDecoration: 'animaux'.tr,callback:(){}),
          HomeItem(lottieIcon: lottieNombre,textDecoration: 'compter'.tr,callback:(){}),
         HomeItem(lottieIcon: lottieFruit,textDecoration: 'fruit'.tr,callback:(){}),
          HomeItem(lottieIcon: lottieMoisAnnee,textDecoration: 'mois'.tr,callback:(){}),
        
     
          ]),
        ),
      ),
    );
  }
}
