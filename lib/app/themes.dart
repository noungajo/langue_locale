import 'package:flutter/material.dart';
import 'package:reenamuna/constants/colors.dart';
import 'package:sizer/sizer.dart';



class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme:  TextTheme(
          titleLarge: TextStyle(
        fontFamily: "lato",
        fontWeight: FontWeight.bold,
        fontSize: 16.sp,
        color: lightTextColor),
        titleMedium:
        TextStyle(fontFamily: "lato", fontSize: 15.sp, color: lightTextColor),
        titleSmall: TextStyle(fontFamily: "lato", fontSize: 14.sp, color: lightTextColor),
        bodyLarge: TextStyle(
      fontFamily: "lato",
      fontSize: 12.sp,
      color: lightTextColor,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontFamily: "lato",
      fontSize: 12.sp,
      color: lightTextColor,
    ),
    bodySmall: TextStyle(
      fontFamily: "lato",
      fontSize: 11.sp,
      color: lightTextColor,
    ),
      ),
      appBarTheme: AppBarTheme(backgroundColor: lightAppbarColor,iconTheme:IconThemeData(color: lightAppbarIconColor),centerTitle: true,titleTextStyle: TextStyle(fontFamily: "lato", fontSize: 15.sp, color: lightAppbarTextColor), ),

      iconTheme: IconThemeData(color: lightIconColor)

      );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TextTheme(
          titleLarge: TextStyle(
        fontFamily: "lato",
        fontWeight: FontWeight.bold,
        fontSize: 16.sp,
        color: darkTextColor),
        titleMedium:
        TextStyle(fontFamily: "lato", fontSize: 15.sp, color: darkTextColor),
        titleSmall: TextStyle(fontFamily: "lato", fontSize: 14.sp, color: darkTextColor),
        bodyLarge: TextStyle(
      fontFamily: "lato",
      fontSize: 12.sp,
      color: darkTextColor,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontFamily: "lato",
      fontSize: 12.sp,
      color: darkTextColor,
    ),
    bodySmall: TextStyle(
      fontFamily: "lato",
      fontSize: 11.sp,
      color: darkTextColor,
    ),
      ),
      appBarTheme: AppBarTheme(backgroundColor: darkAppbarColor,iconTheme:IconThemeData(color: darkAppbarIconColor),centerTitle: true,titleTextStyle: TextStyle(fontFamily: "lato", fontSize: 15.sp, color: darkAppbarTextColor), ),
    
      iconTheme: IconThemeData(color: darkIconColor)
      );
}