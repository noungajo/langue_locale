import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/style.dart';

AppBar appBar(String title,BuildContext context){
  return AppBar(
    backgroundColor: lightAppbarColor,
    title: Text(title,style:titleMediumStyle),
    centerTitle: true,
    );
}