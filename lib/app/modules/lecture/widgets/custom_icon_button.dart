import 'package:flutter/material.dart';

import '../../../../constants/size.dart';

Widget customIconButton({required IconData icon,  VoidCallback? onPressed,Color? couleur ,double? iconSize}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(borderRadiusSize),
    child: Container(
      color:couleur ,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        iconSize: iconSize,
        onPressed: onPressed,
      ),
    ),
  );
}