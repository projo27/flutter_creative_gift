import 'package:flutter/material.dart';

class ThemeColors {
  ThemeColors._();

  static Color get white => Color(0xFFFFFFFF); //white
  static Color get black => Color(0xFF000000); //white
  static Color get orange50 => Color(0xFFFFC431); //orange2
  static Color get orange => Color(0xFFFE5C19); //orange
  static Color get skyBlue50 => Color(0xFF93D9E5); //skyBlue2
  static Color get skyBlue => Color(0xFF81D3E1); //skyBlue
  static Color get brown50 => Color(0xFF684B64); //brown2
  static Color get brown => Color(0xFF573753); //brown

  static List<Color> colorList = [
    white,
    orange50,
    orange,
    skyBlue50,
    skyBlue,
    brown50,
    brown,
  ];

  static List<Color> colorCategories = colorList.getRange(2, 6).toList();
}
