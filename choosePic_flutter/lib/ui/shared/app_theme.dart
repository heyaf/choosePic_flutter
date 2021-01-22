import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../core/const/constValue.dart';
import '../../core/tool/toolfuction.dart';

class Apptheme {
  static const double bodyFontSize = 12;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;

  static final Color normalColor = Color.fromARGB(71, 187, 255, 1);

  static final ThemeData normalTheme = ThemeData(
      // primarySwatch: toolFuction().createMaterialColor(constValue.kMainColor16),
      primarySwatch: Colors.pink,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      canvasColor: Color.fromRGBO(255, 254, 222, 1),
      textTheme: TextTheme(
        body1: TextStyle(
            fontSize: bodyFontSize, color: Color.fromRGBO(51, 51, 51, 1)),
        display1: TextStyle(
            fontSize: smallFontSize, color: Color.fromRGBO(51, 51, 51, 1)),
        display2: TextStyle(
            fontSize: smallFontSize, color: Color.fromRGBO(51, 51, 51, 1)),
        display3: TextStyle(
            fontSize: smallFontSize, color: Color.fromRGBO(51, 51, 51, 1)),
      ));
}
