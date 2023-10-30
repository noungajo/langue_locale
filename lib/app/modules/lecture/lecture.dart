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
import '../home/widgets/drawer.dart';
import 'widgets/bouton.dart';

class Lecture extends StatefulWidget {
  const Lecture({super.key});

  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  var interController = Get.put(InterController());
  var lectureController = Get.find<LectureController>();
  @override
  void initState() {
    
    super.initState();
  }
  // Initial Selected Value
  String selectedValue = languePrisEnCharge.first;

  // List of items in our dropdown menu
  var items =languePrisEnCharge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("nom_projet".tr, context),
      drawer: SizedBox(
          width: drawerWidth,
          child: drawer(context)),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(bodyPadding * 2),
        child: Column(
          children: [
            enteteLecture(),
            
            
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
          size: 15.w,
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
                //TODO: permutter la langue cible
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
