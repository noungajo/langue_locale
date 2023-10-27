
import 'package:flutter/material.dart';

import '../constants/colors.dart';


class ThemeClass{
  static ThemeData lightTheme = ThemeData(
    useMaterial3:true,
   
 
    //----------------------------------------------------------------------------------
     textTheme:  TextTheme(
      // Personnalisez le style du texte
        titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "lato",
        color: lightTextColor,
      ),
      titleMedium: TextStyle(
        fontFamily: "lato",
  
        color: lightTextColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: "lato",
        
        color: lightTextColor,
      ),
       bodyMedium: TextStyle(
        fontFamily: "lato",
       
        color: lightTextColor,
      ),
       bodySmall: TextStyle(
        fontFamily: "lato",
        
        color: lightTextColor,
      ),
    ),
    // -------------------- appbar theme -----------------------------------------------------
     appBarTheme: AppBarTheme(
      // Personnalisez l'apparence de l'app Bar
     // color: lightAppbarColor,
     backgroundColor:lightAppbarColor,
      titleTextStyle:   TextStyle(
        fontFamily: "lato",
     
        color: lightTextColor,
      ),
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor:lightBackgroundDrawercolor,
      
    ),

    scaffoldBackgroundColor: lightBackgroundColor
  );


  //========================================   dark theme  ================================================================
    static ThemeData darkTheme = ThemeData(
    useMaterial3:true,
   
 
   //--------------------------------------Text widget--------------------------------------------
     textTheme:  TextTheme(
      // Personnalisez le style du texte
       titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "lato",
        color: darkTextColor,
      ),
      titleMedium: TextStyle(
        color: darkTextColor,
        fontFamily: "lato",
      ),
      bodyLarge: TextStyle(
        color: darkTextColor,
        fontFamily: "lato",
      ),
       bodyMedium: TextStyle(
        color: darkTextColor,
        fontFamily: "lato",
      ),
       bodySmall: TextStyle(
        color: darkTextColor,
        fontFamily: "lato",
      ),
    ), 
 // -------------------- appbar theme -----------------------------------------------------
     appBarTheme: AppBarTheme(
      // Personnalisez l'apparence de l'app Bar
      //color: darkAppbarColor, 
     backgroundColor:darkAppbarColor,
      titleTextStyle:   TextStyle(
        color: darkTextColor,
        fontFamily: "lato",
      ),
    ),
       drawerTheme: DrawerThemeData(
      backgroundColor:darkBackgroundDrawercolor,
      
    ),
    scaffoldBackgroundColor: darkBackgroundColor,

  );
}