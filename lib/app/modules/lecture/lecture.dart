import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reenamuna/app/modules/lecture/lecture_controller.dart';
import 'package:reenamuna/app/utils/app_bar.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/app_constants.dart';
import '../../../constants/size.dart';
import '../../../constants/style.dart';
import '../../internationalisation/inter_controller.dart';
import '../../utils/snackbar.dart';
import '../home/widgets/drawer.dart';
import 'lecture_modele.dart';
import 'widgets/bouton.dart';
import 'package:audioplayers/audioplayers.dart';

import 'widgets/custom_icon_button.dart';
import 'widgets/object_display.dart';

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
void playAudio(String? audioPath) {
  if (audioPath == null) {
    showSnackBar(context, "unable_to_load".tr, snackBartime);
  } else if (audioPath.isEmpty) {
    showSnackBar(context, "empty_translation".tr, snackBartime);
  } else {
    player.play(AssetSource(audioPath));
    player.stop();
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("nom_projet".tr, context),
      drawer: SizedBox(width: drawerWidth, child: drawer(context)),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(bodyPadding * 2),
        child: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: itemSpacer,
              ),
              enteteLecture(),
              SizedBox(
                height: itemSpacer * 3,
              ),
              InkWell(
                  onTap:  () {
    playAudio(objectList[currentObjet.value].audioMap[selectedValue]);
  },
                  child: ObjectDisplay(objectList: objectList, currentObjet: currentObjet))
                  ,
              SizedBox(
                height: itemSpacer * 4,
              ),
           SizedBox(
  width: lectureImageSize * 1.5,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      customIconButton(
        icon: Icons.arrow_back,
        onPressed: () {
          if (currentObjet.value > 0) {
            currentObjet.value = currentObjet.value - 1;
          } else {
            showSnackBar(context, "min_atteint".tr, snackBartime);
          }
        },
      ),
      customIconButton(
        icon: Icons.arrow_forward,
        onPressed: () {
          if (currentObjet.value < objectList.length - 1) {
            currentObjet.value = currentObjet.value + 1;
          } else {
            showSnackBar(context, "max_atteint".tr, snackBartime);
          }
        },
      ),
    ],
  ),
)
             ],
          ),
        ),
      )),
    );
  }
  Row enteteLecture() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      changeLanguageButton(),
      Icon(
        Icons.arrow_forward_sharp,
        size: 10.w,
        color: Colors.black,
      ),
      buildDropdownButton(),
    ],
  );
}

Widget changeLanguageButton() {
  final param = "langue".tr.toLowerCase().substring(0, 2);
  final language = (param == "en") ? "fr" : "en";

  return bouton("langue".tr, () {
    interController.changeLanguage(language, language);
  });
}

Widget buildDropdownButton() {
  return DropdownButtonHideUnderline(
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
        height: dropdownHeight,
        width: dropdownWight,
      ),
      menuItemStyleData: MenuItemStyleData(
        height: 5.h,
      ),
    ),
  );
}

}

