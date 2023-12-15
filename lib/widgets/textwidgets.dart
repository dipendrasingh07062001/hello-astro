import 'package:flutter/material.dart';
import 'package:hello_astro_user/theme/themedata.dart';

Text textStyle(String text, Color? color,
    {double? fontSize,
    FontWeight? fontWeight,
    double? height,
    double? letterSpacing,
    TextAlign? textAlign = TextAlign.start,
    TextDecoration? decoration}) {
  return Text(
    text,
    textAlign: textAlign,
    style: googleFontstyle(TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
      height: height,
      letterSpacing: letterSpacing,
      decoration: decoration,
    )),
  );
}
