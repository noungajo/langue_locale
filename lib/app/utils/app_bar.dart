import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/size.dart';

AppBar appBar(String title,BuildContext context){
   final textTheme = Theme.of(context).textTheme;
  return AppBar(
    backgroundColor: lightAppbarColor,
    title: Text(title,style:titleMediumStyle),
    centerTitle: true,
    );
}
