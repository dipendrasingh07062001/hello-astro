// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class EltdButton extends StatelessWidget {
  String? title;
  double? width;
  double? height;
  Function()? press;
  Color? color;
  Color? foregroundColor;
  double? radius;
  double? fntSize;
  FontWeight? fntwgt;
  double? elevation;

  EltdButton(
      {this.title,
      this.width,
      this.height,
      this.press,
      this.color,
      this.foregroundColor,
      this.radius,
      this.fntSize,
      this.elevation,
      this.fntwgt});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        elevation: elevation ?? 0,
        foregroundColor: foregroundColor,
        minimumSize: Size(width!, height!),
        maximumSize: Size(width!, height!),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius!)),
      ),
      onPressed: press,
      child: Text(
        title!,
        style: TextStyle(
          fontSize: fntSize,
          fontWeight: fntwgt ?? FontWeight.w400,
        ),
      ),
    );
  }
}

class CustomCloseButton extends StatelessWidget {
  final void Function()? onTap;
  final Color backgroundColor;
  final Color iconColor;
  final double radius;
  const CustomCloseButton({
    super.key,
    required this.onTap,
    required this.backgroundColor,
    required this.iconColor,
    this.radius = 13,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: Icon(
          Icons.close_rounded,
          color: iconColor,
        ),
      ),
    );
  }
}

class SocialMediabutton extends StatelessWidget {
  final String image;
  final String link;
  final EdgeInsetsGeometry? padding;
  const SocialMediabutton(this.image, this.link, {super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 11,
        ),
      ),
    );
  }
}
