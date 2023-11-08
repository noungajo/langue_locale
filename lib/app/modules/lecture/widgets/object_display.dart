import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/size.dart';
import '../../../../constants/string.dart';
import '../../../../constants/style.dart';
import '../lecture_modele.dart';

class ObjectDisplay extends StatelessWidget {
  const ObjectDisplay({
    super.key,
    required this.objectList,
    required this.currentObjet,
  });

  final List<LectureModele> objectList;
  final RxInt currentObjet;

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(
        objectList[currentObjet.value].text.tr,
        style: itemStyle,
      ),
      SizedBox(
        height: itemSpacer,
      ),
      Card(
        elevation: 10,
        child: Image.asset(
          objectList[currentObjet.value].imageUrl,
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
      )
      ],
      ),
    );
  }
}
