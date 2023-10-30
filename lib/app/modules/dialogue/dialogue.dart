import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:reenamuna/constants/string.dart';

import '../../../constants/size.dart';
import '../../../constants/style.dart';
import '../../utils/app_bar.dart';
import '../home/widgets/drawer.dart';

class Dialogue extends StatelessWidget {
  const Dialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("dialogue".tr,context),
      drawer: SizedBox(
          width: drawerWidth,
          child: drawer(context)),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(bodyPadding),
          child: Column(
            children: [
         Padding(
           padding:  EdgeInsets.only(bottom:itemSpacer,top: itemSpacer),
           child: ListTile(
              leading: Image.asset(dialogPresentationIcon),
              title:  Text('presentation_dialog'.tr,style: bodyLargeStyle,),
              onTap: () {
                //ici sera charger les données de la présentation pour lire dans le lecteur
                Get.toNamed("/player");
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
                Get.toNamed("/player");
              },
                      ),
            ),
          ]),
        ),
      ),
    );
  }
}