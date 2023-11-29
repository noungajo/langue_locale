import 'package:Reenamuna/app/modules/lecture/lecture_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
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
    // required this.currentObjet,
  });

  final List<LectureModele> objectList;
  // final RxInt currentObjet;
  var lectureController = Get.find<LectureController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => AnimatedSwitcher(
        duration: Duration(milliseconds: 500), // Réglez la durée de l'animation selon vos préférences
              transitionBuilder: (Widget child, Animation<double> animation)=>ScaleTransition(child: child,scale:animation),
      child: Column(  
        key: Key(objectList[lectureController.currentObjet.value].text.tr), // Utilisez la valeur actuelle comme clé pour identifier le widget
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                objectList[lectureController.currentObjet.value].text.tr,
                style: itemStyle,
              ),
              SizedBox(
                height: itemSpacer,
              ),
              Card(
                elevation: 10,
                child: objectList[lectureController.currentObjet.value].imageUrl.isEmpty
                    ? SizedBox(
                        width: lectureImageSizeHeight,
                        height: lectureImageSizeHeight,
                        child: Center(
                          child: Text(
                            objectList[lectureController.currentObjet.value].text.tr,
                            style: openTitleStyle,
                          ),
                        ),
                      )
                    : Image.asset(
                        objectList[lectureController.currentObjet.value].imageUrl,
                        width: lectureImageSizeHeight,
                        height: lectureImageSizeHeight,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            imageNotFound,
                            fit: BoxFit.contain,
                          );
                        },
                      ),
              ),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                 // Lottie.asset(lottieListining, height: 10.h, fit: BoxFit.scaleDown),
                 SvgPicture.asset(speaker,width: iconSize*0.8),
                 SizedBox(width: 5.w,),
                  Text("ecouter".tr, style: clickTextStyle),
                ],
              )
            ],
          ),
    ));
  }
}
