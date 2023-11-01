import 'package:flutter/material.dart';
import 'package:reenamuna/constants/style.dart';

void showSnackBar(BuildContext context,String text,int timeInSecond) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor:Colors.black,
      content: Text(text,style: bodySmallStyle.apply(color: Colors.white),),
      duration: Duration(seconds: timeInSecond), // Durée pendant laquelle la Snackbar est affichée (2 secondes dans cet exemple)
    ),
  );
}