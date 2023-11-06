import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';

class AppThemeData {
  static ThemeData appTheme = ThemeData(
      primaryColor: Palatt.primary,
      fontFamily: AppFontFamily.family,
      appBarTheme: const AppBarTheme(
        backgroundColor: Palatt.white,
        foregroundColor: Palatt.black,
        elevation: 2,
      ));
}

class AppFontFamily {
  static get family => GoogleFonts.hind().fontFamily;
}
