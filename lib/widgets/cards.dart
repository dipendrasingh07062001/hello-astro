// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';

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
    return Expanded(
      child: Container(
        height: height,
        width: width,
        margin: margin,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Palatt.white,
          borderRadius: borderRadius,
          boxShadow: [
            BoxShadow(
              color: Palatt.blacklightshade.withOpacity(0.2),
              blurRadius: 6,
            )
          ],
        ),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                image,
                height: 40,
                width: 40,
              ),
              const SizedBox(height: 10),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w600, height: 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FSCard extends StatelessWidget {
  double? height;
  double? width;
  EdgeInsetsGeometry? margin;
  String image;
  String text;
  FSCard({
    super.key,
    this.height,
    this.width,
    this.margin,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: margin,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22.5),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 45,
              width: 45,
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
    // Container(
    //   margin: margin,
    //   padding: const EdgeInsets.symmetric(vertical: 3),
    //   decoration: BoxDecoration(
    //     color: Palatt.primary,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Container(
    //     width: width,
    //     height: height,
    //     padding: const EdgeInsets.all(5),
    //     decoration: BoxDecoration(
    //       color: Palatt.offwhite,
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     child: Column(
    //       mainAxisAlignment: mainAxisAlignment,
    //       crossAxisAlignment: crossAxisAlignment,
    //       children: children,
    //     ),
    //   ),
    // );
  }
}

class HoroCard extends StatelessWidget {
  void Function()? onTap;
  String title, image;
  HoroCard(
      {super.key,
      required this.onTap,
      required this.image,
      required this.title});
  double h = Get.height, w = Get.width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: h * 0.1,
        width: w * 0.22,
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 45,
              // width: 50,
              decoration: BoxDecoration(
                color: Palatt.white,
                boxShadow: [
                  BoxShadow(
                    color: Palatt.boxShadow.withOpacity(0.6),
                    blurRadius: 6,
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 12,
                    color: Palatt.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              image,
              height: 50,
              width: 50,
            ),
            // CircleAvatar(
            //   backgroundImage: NetworkImage(image),
            //   radius: h * 0.032,
            // ),
          ),
        ]),
      ),
    );
  }
}
