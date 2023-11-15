import 'package:flutter/material.dart';
import '/constants/style.dart';

import '../../../../constants/size.dart';

ElevatedButton bouton(String label,VoidCallback callback){
  return ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white, // Couleur de fond blanche
   // onPrimary: Colors.black, // Couleur du texte en noir
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(elevatedButtonPadding), // Contour arrondi avec un rayon de 20.0
    ),
  ),
  onPressed: callback,
  child: Padding(
    padding:  EdgeInsets.only(top: elevatedButtonPadding,bottom: elevatedButtonPadding),
    child: Text(label,style: bodySmallStyle,),
  ), // Texte à afficher sur le bouton
);
}
