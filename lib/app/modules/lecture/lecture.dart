import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reenamuna/app/modules/lecture/lecture_controller.dart';
import 'package:reenamuna/app/utils/app_bar.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import '../../../constants/string.dart';
import '../../../constants/style.dart';
import '../../internationalisation/inter_controller.dart';
import '../../utils/snackbar.dart';
import '../home/widgets/drawer.dart';
import 'lecture_modele.dart';
import 'widgets/bouton.dart';
import 'package:audioplayers/audioplayers.dart';

class Lecture extends StatefulWidget {
  const Lecture({super.key});

  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  var interController = Get.put(InterController());
  var lectureController = Get.find<LectureController>();
  final player = AudioPlayer();
  List<LectureModele> objectList = [];
  RxInt currentObjet = 0.obs;
  @override
  void initState() {
    objectList = lectureController.getCurrentListeLecture();
    super.initState();
  }

  // Initial Selected Value
  String selectedValue = languePrisEnCharge.first;

  // List of items in our dropdown menu
  var items = languePrisEnCharge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("nom_projet".tr, context),
      drawer: SizedBox(width: drawerWidth, child: drawer(context)),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(bodyPadding * 2),
        child: Column(
          children: [
            enteteLecture(),
            SizedBox(
              height: itemSpacer * 2,
            ),
            Obx(() => InkWell(
                  onTap: () {
                    //TODO: comment gérer une image qui n'existe pas ou un audio
                    /*
 
                */
                    String? audioPath =
                        objectList[currentObjet.value].audioMap[selectedValue];
                    if (audioPath == null) {
                      showSnackBar(context, "System Error", snackBartime);
                    } else {
                      if (audioPath.isEmpty) {
                        showSnackBar(context, "No translation for this word",
                            snackBartime);
                      } else {
                        player.play(AssetSource(audioPath));
                        player.stop();
                      }
                    }
                  },
                  child: Column(
                    children: [
                      Text(
                        objectList[currentObjet.value].text.tr,
                        style: bodyLargeStyle,
                      ),
                      Image.asset(
                        objectList[currentObjet.value].imageUrl,
                        width: lectureImageSize * 1.5,
                        height: lectureImageSize * 2,
                        fit: BoxFit
                            .contain, // Ajuste l'image pour remplir l'espace sans
                        errorBuilder: (context, error, stackTrace) {
                          // Gérez l'erreur ici, par exemple, en affichant une image de remplacement ou un message d'erreur
                          return Image.asset(
                              imageNotFound); // Image de remplacement
                        },
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: itemSpacer * 4,
            ),
            SizedBox(
                width: lectureImageSize * 1.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          borderMiniRidusSize), // Bordures arrondies
                      child: Container(
                        color:
                            lightAppbarColor, // Couleur de fond pour le bouton "Previous"
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ), // Icône de flèche vers la gauche
                          onPressed: () {
                            // Action à effectuer lorsqu'on appuie sur le bouton "Previous"
                            if (currentObjet.value > 0) {
                              currentObjet.value = currentObjet.value - 1;
                            } else {
                              showSnackBar(
                                  context, "min_atteint".tr, snackBartime);
                            }
                          },
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                          borderMiniRidusSize), // Bordures arrondies
                      child: Container(
                        color:
                            lightAppbarColor, // Couleur de fond pour le bouton "Next"
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ), // Icône de flèche vers la droite
                          onPressed: () {
                            // Action à effectuer lorsqu'on appuie sur le bouton "Next"
                            if (currentObjet.value < objectList.length - 1) {
                              currentObjet.value = currentObjet.value + 1;
                            } else {
                              showSnackBar(
                                  context, "max_atteint".tr, snackBartime);
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      )),
    );
  }

  Row enteteLecture() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        bouton("langue".tr, () {
          final param = "langue".tr.toLowerCase().substring(0, 2);
          if (param == "en") {
            interController.changeLanguage("fr", "fr");
          } else {
            interController.changeLanguage("en", "en");
          }
        }),
        Icon(
          Icons.arrow_forward_sharp,
          size: 10.w,
          color: Colors.black,
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: true,
            items: items
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: bodySmallStyle,
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value!;
              });
            },
            buttonStyleData: ButtonStyleData(
              //padding: EdgeInsets.symmetric(horizontal: 16),
              height: dropdownHeight,
              width: dropdownWight,
            ),
            menuItemStyleData: MenuItemStyleData(
              height: 5.h,
            ),
          ),
        ),
      ],
    );
  }
}
