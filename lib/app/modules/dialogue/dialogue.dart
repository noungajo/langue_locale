import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:reenamuna/app/modules/home/widgets/liste_lecture_objects_presentation.dart';
import 'package:reenamuna/app/modules/home/widgets/liste_lecture_objects_salutation.dart';
import 'package:reenamuna/constants/string.dart';

import '../../../constants/size.dart';
import '../../../constants/style.dart';
import '../../utils/app_bar.dart';
import '../home/widgets/drawer.dart';
import '../lecture/lecture.dart';
import '../lecture/lecture_controller.dart';

// ignore: must_be_immutable
class Dialogue extends StatelessWidget {
   Dialogue({super.key});
  var lectureController = Get.find<LectureController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("dialogue".tr,context),
      drawer: SizedBox(
          width: drawerWidth,
          child: drawer(context)),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.05),
          child: Column(
            children: [
         Padding(
           padding:  EdgeInsets.only(bottom:itemSpacer,top: itemSpacer),
           child: ListTile(
              leading: Image.asset(dialogPresentationIcon),
              title:  Text('presentation_dialog'.tr,style: bodyLargeStyle,),
              onTap: () {
                //ici sera charger les données de la présentation pour lire dans le lecteur
                      lectureController.setCurrentListeLecture(listeLecturePresentation);
             Get.off(() =>  Lecture(titre:'presentation_dialog'));
              },
            ),
         ),
        
            Padding(
              padding: EdgeInsets.only(bottom:itemSpacer,top: itemSpacer),
              child: ListTile(
              leading: SvgPicture.asset(dialogSalutationIcon),
              title:  Text('salutation_dialog'.tr,style: bodyLargeStyle,),
              onTap: () {
                //ici sera charger les données de la salution pour lire dans le lecteur
                   lectureController.setCurrentListeLecture(listeLectureSalutation);
             Get.off(() =>  Lecture(titre:'salutation_dialog'));
              },
                      ),
            ),
          ]),
        ),
      ),
    );
  }
}