import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/size.dart';
import '../../../constants/string.dart';
import '../../utils/app_bar.dart';
import '../../utils/changeLanguageText.dart';
import '../lecture/lecture.dart';
import '../lecture/lecture_controller.dart';
import 'widgets/drawer.dart';
import 'widgets/home_item.dart';
import 'widgets/liste_lecture_objects_animaux.dart';
import 'widgets/liste_lecture_objects_compter.dart';
import 'widgets/liste_lecture_objects_fruit.dart';
import 'widgets/liste_lecture_objects_mois.dart';
import 'widgets/liste_lecture_objects_premier_mot.dart';

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
        
        appBar: appBar("nom_projet".obs,context,changeLanguageButton()),
      drawer: SizedBox(
          width: drawerWidth,
          child: drawer(context)),
        body:SingleChildScrollView(
  child: Container(
    padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
    child: Wrap(
      alignment: WrapAlignment.center, // Alignement des éléments au centre
      spacing: 8.w,
      children: [
        HomeItem(
          lottieIcon: lottiePremierMot,
          textDecoration: 'premier_mot'.tr,
          callback: () {
            lectureController.setCurrentListeLecture(listeLecturePremierMot);
                  lectureController.setCurrentTitle('premier_mot');
            lectureController.setPop(false);
            Get.off(() => Lecture());
          },
        ),
        HomeItem(
          lottieIcon: lottieDialogue,
          textDecoration: 'dialogue'.tr,
          callback: () {
            Get.toNamed("/dialog");
          },
        ),
        HomeItem(
          lottieIcon: lottieAnimaux,
          textDecoration: 'animaux'.tr,
          callback: () {
            lectureController.setCurrentListeLecture(listeLectureAnimaux);
                  lectureController.setCurrentTitle('animaux');
            lectureController.setPop(false);
            Get.off(() => Lecture());
          },
        ),
        HomeItem(
          lottieIcon: lottieNombre,
          textDecoration: 'compter'.tr,
          callback: () {
            lectureController.setCurrentListeLecture(listeLectureNombre);
                  lectureController.setCurrentTitle('compter');
            lectureController.setPop(false);
            Get.off(() => Lecture());
          },
        ),
        HomeItem(
          lottieIcon: lottieFruit,
          textDecoration: 'fruit'.tr,
          callback: () {
            lectureController.setCurrentListeLecture(listeLectureFruit);
                  lectureController.setCurrentTitle('fruit');
            lectureController.setPop(false);
            Get.off(() => Lecture());
          },
        ),
        HomeItem(
          lottieIcon: lottieMoisAnnee,
          textDecoration: 'mois'.tr,
          callback: () {
            lectureController.setCurrentListeLecture(listeLectureMois);
                  lectureController.setCurrentTitle('mois');
            lectureController.setPop(false);
            Get.off(() => Lecture());
          },
        ),
      ],
    ),
  ),
),
  ),
    );
  }
}
