import 'package:Reenamuna/app/modules/lecture/lecture_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/size.dart';
import '../../../../constants/string.dart';
import '../../../../constants/style.dart';
import '../lecture_modele.dart';

// ignore: must_be_immutable
class ObjectDisplay extends StatelessWidget {
   ObjectDisplay({
    super.key,
    required this.objectList,
    //required this.currentObjet,
  });

  final List<LectureModele> objectList;
 // final RxInt currentObjet;
var lectureController = Get.find<LectureController>();
  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(
        objectList[lectureController.currentObjet.value].text.tr ,
        style: itemStyle,
      ),
      SizedBox(
        height: itemSpacer,
      ),
      Card(
        elevation: 10,
        child: objectList[lectureController.currentObjet.value].imageUrl.isEmpty?
        SizedBox(
          width: lectureImageSizeHeight ,
          height: lectureImageSizeHeight ,
          child: Center(child: Text(objectList[lectureController.currentObjet.value].text.tr,style: openTitleStyle,)))
        :Image.asset(
          objectList[lectureController.currentObjet.value].imageUrl,
          width: lectureImageSizeHeight ,
          height: lectureImageSizeHeight ,
          fit: BoxFit
              .contain, // Ajuste l'image pour remplir l'espace sans
          errorBuilder: (context, error, stackTrace) {
            // Gérez l'erreur ici, par exemple, en affichant une image de remplacement ou un message d'erreur
            return Image.asset(
                imageNotFound,fit: BoxFit
              .contain, ); // Image de remplacement
          },
        ),
      ),
     
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(lottieListining, height: 10.h,
           fit: BoxFit.scaleDown),
          Text("ecouter".tr,style: clickTextStyle,),
        ],
      )
      ],
      ),
    );
  }
}
