import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';

Widget customIconButton({required IconData icon,  VoidCallback? onPressed}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(borderMiniRidusSize),
    child: Container(
      color: lightAppbarColor,
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
      ),
    ),
  );
}