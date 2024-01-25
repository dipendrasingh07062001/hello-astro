// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/widgets/space.dart';

import '../utils/buttons.dart';
import '../utils/imageslink.dart';

class Fcard extends StatelessWidget {
  void Function()? onTap;
  double? height;
  double? width;
  EdgeInsetsGeometry? margin, padding;
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
    this.padding,
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
        padding: padding ?? const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Palatt.white,
          borderRadius: borderRadius,
          boxShadow: const [
            BoxShadow(
              color: Palatt.boxShadow,
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
                    fontSize: 12, fontWeight: FontWeight.w600, height: 1.2),
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
  String? date;
  double? height, width;
  HoroCard({
    super.key,
    required this.onTap,
    required this.image,
    required this.title,
    this.height,
    this.width,
    this.date,
  });
  double h = Get.height, w = Get.width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: height ?? h * 0.1,
        width: width ?? w * 0.22,
        child: Stack(children: [
          Padding(
            padding: EdgeInsets.only(top: (height ?? h * 0.1) * 0.44),
            child: Container(
              height: height ?? h * 0.1,
              // width: 50,
              decoration: const BoxDecoration(
                color: Palatt.white,
                boxShadow: [
                  BoxShadow(
                    color: Palatt.boxShadow,
                    blurRadius: 6,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Palatt.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Visibility(
                    visible: date != null,
                    child: Text(
                      date ?? "",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 10,
                          color: Palatt.primary,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  spaceVertical(5)
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: (height ?? h * 0.1) * 0.15),
              height: (height ?? h * 0.1) / 1.8,
              width: (height ?? h * 0.1) / 1.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              )),
              // child: Image.asset(
              //   image,
              //   height: (height ?? h * 0.1) / 1.8,
              //   width: (height ?? h * 0.1) / 1.8,
              //   fit: BoxFit.fill,
              // ),
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

class AstroCard extends StatelessWidget {
  const AstroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.astrodetailsview),
      child: Container(
        decoration: BoxDecoration(
            color: Palatt.yellow2nd,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 6,
                // spreadRadius: 3,
                color: Palatt.boxShadow,
              )
            ]),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Stack(
                children: [
                  const Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 33,
                      backgroundColor: Palatt.white,
                      child: CircleAvatar(
                        radius: 31,
                        backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 63,
                      left: Get.width * 0.11,
                      right: Get.width * 0.11,
                      child: Center(
                        child: Container(
                          width: 66,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Palatt.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                5,
                                (index) => const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      child: Icon(
                                        Icons.star,
                                        size: 10,
                                        color: Palatt.primary,
                                      ),
                                    )),
                          ),
                        ),
                      )),
                  const Positioned(
                    top: 79,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Text(
                        "70000 Orders",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: Get.width,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: Palatt.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Zoha Merchant",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    ),
                    const Text(
                      "English, Hindi",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Palatt.black,
                      ),
                    ),
                    const Text(
                      "English, Hindi",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Palatt.black,
                      ),
                    ),
                    const Text(
                      "Exp: 6 year",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Palatt.grey,
                      ),
                    ),
                    const Text(
                      "Jaipur, Raj",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                        color: Palatt.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "₹ 12/min",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Palatt.primary,
                          ),
                        ),
                        RRButton2(
                          height: 25,
                          width: 57,
                          backgroundColor: Palatt.primary,
                          radius: 3,
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppImages.rocketchat,
                              ),
                              spaceHorizontal(5),
                              Text(
                                Words.Chat.tr,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Palatt.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
