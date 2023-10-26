// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';

class Fcard extends StatelessWidget {
  void Function()? onTap;
  double? height;
  double? width;
  EdgeInsetsGeometry? margin;
  BorderRadiusGeometry? borderRadius;
  String image;
  String text;
  Fcard({
    super.key,
    this.onTap,
    this.height,
    this.width,
    this.margin,
    this.borderRadius,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        color: Palatt.white,
        borderRadius: borderRadius,
        // boxShadow: [
        //   BoxShadow(
        //     color: Palatt.blacklightshade.withOpacity(0.2),
        //     spreadRadius: 2,
        //     blurRadius: 4,
        //   )
        // ],
      ),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              height: 60,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w600, height: 1),
            )
          ],
        ),
      ),
    );
  }
}

class FSCard extends StatelessWidget {
  double? height;
  double? width;
  EdgeInsetsGeometry? margin;
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;
  List<Widget> children = const <Widget>[];
  FSCard({
    super.key,
    this.height,
    this.width,
    this.margin,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        color: Palatt.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Palatt.offwhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      ),
    );
  }
}
