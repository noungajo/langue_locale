import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../../../constants/style.dart';



Drawer drawer (BuildContext context){
  
  return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
           UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: lightBackgroundDrawercolor),
        accountName: Text(
          "nom_projet".tr,
          style: titleDrawerStyle,
        ),
        accountEmail: const Text(
          "",
        ),
        currentAccountPicture: const FlutterLogo(),
      ),
      

          ListTile(
           leading: Lottie.asset("assets/lottie/premier_mot.json",width: drawericonWidth,fit: BoxFit.cover),
            title:  Text('premier_mot'.tr,style: bodySmallStyle,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Lottie.asset("assets/lottie/dialog.json",width: drawericonWidth),
            title:  Text('dialogue'.tr,style: bodySmallStyle,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
           ListTile(
           leading: Lottie.asset("assets/lottie/nombre.json",width: drawericonWidth),
            title:  Text('compter'.tr,style: bodySmallStyle,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Lottie.asset("assets/lottie/animaux.json",width: drawericonWidth),
            title:  Text('animaux'.tr,style: bodySmallStyle,),
            onTap: () {
              Navigator.pop(context);
            },
          ), ListTile(
           leading: Lottie.asset("assets/lottie/fruit.json",width: drawericonWidth),
            title:  Text('fruit'.tr,style: bodySmallStyle,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Lottie.asset("assets/lottie/mois_anne.json",width: drawericonWidth),
            title:  Text('mois'.tr,style: bodySmallStyle,),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),);
}