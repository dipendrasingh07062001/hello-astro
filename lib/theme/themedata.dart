import 'package:flutter/material.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';

class AppThemeData {
  static ThemeData appTheme = ThemeData(
      primaryColor: Palatt.primary,
      appBarTheme: const AppBarTheme(
        backgroundColor: Palatt.white,
        foregroundColor: Palatt.black,
        elevation: 2,
      ));
}
