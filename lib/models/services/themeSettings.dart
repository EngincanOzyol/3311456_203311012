import 'package:flutter/material.dart';


 ThemeData darkTheme = ThemeData(
brightness:Brightness.dark,
 );

 var lightTheme = ThemeData(
   brightness: Brightness.light,
 );


class ThemeModel extends ChangeNotifier {
 ThemeData currentTheme=darkTheme;
 toggleTheme() {

   currentTheme = darkTheme;

   return notifyListeners();
  }
toglethem(){
  currentTheme=lightTheme;
  return notifyListeners();
}

  }

