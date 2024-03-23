import 'package:flutter/material.dart';

class AppTextStyle {
  static const String balsamiqFontFamily = 'Balsamiq';

  static TextStyle noteContentFont(
      {double fontSize = 18,
      FontWeight fontWeight = FontWeight.normal,
      Color fontColor = Colors.black}) {
    return TextStyle(
      fontFamily: balsamiqFontFamily,
      color: fontColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: 1.2,
    );
  }

  static TextStyle header2(
      {double fontSize = 20,
      FontWeight fontWeight = FontWeight.bold,
      Color fontColor = Colors.black}) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: fontColor,
      fontFamily: balsamiqFontFamily,
      height: 1.2,
    );
  }
}
