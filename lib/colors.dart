import 'package:flutter/material.dart';

class ThemeColors {
  ThemeColors._();

  static Color get white => Color(0xFFFFFFFF); //white
  static Color get white50 => Color(0xFFF8F7F7); //white
  static Color get black => Color(0xFF000000); //white
  static Color get black50 => Color(0x22000000); //white
  static Color get orange75 => Color(0xFFFFD15D); //orange2
  static Color get orange50 => Color(0xFFFFC431); //orange2
  static Color get orange25 => Color(0xFFFF814D); //orange
  static Color get orange => Color(0xFFFE5C19); //orange  
  static Color get skyBlue75 => Color(0xFFAEE9F3); //skyBlue2
  static Color get skyBlue50 => Color(0xFF93D9E5); //skyBlue2
  static Color get skyBlue => Color(0xFF81D3E1); //skyBlue
  static Color get brown75 => Color(0xFF684B64); //brown2
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

  static Color secondColor(Color color) {
    if (color == skyBlue) return skyBlue50;
    if (color == skyBlue50) return skyBlue75;
    if (color == orange) return orange25;
    if (color == orange50) return orange75;
    if (color == brown) return brown50;
    if (color == brown50) return brown75;
    return white;
  }
}
