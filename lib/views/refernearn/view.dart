import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/buttons.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/space.dart';

class ReferandEarn extends GetView {
  const ReferandEarn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Refer and earn",
      ),
      body: Column(
        children: [
          spaceVertical(20),
          Image.asset(
            AppImages.confeti,
          ),
          spaceVertical(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Refer your friends and get upto free coins class",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Palatt.black,
              ),
            ),
          ),
          spaceVertical(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "You will get XX classes after first transaction of the person who signed up with your code",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Palatt.black,
              ),
            ),
          ),
          spaceVertical(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RRButton(
                width: 140,
                height: 44,
                backgroundColor: Palatt.white,
                radius: 6,
                boxShadow: const [
                  BoxShadow(
                    color: Palatt.boxShadow,
                    blurRadius: 4,
                  )
                ],
                onTap: () {},
                data: "567891",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Palatt.black,
                ),
              ),
              spaceHorizontal(15),
              RRButton(
                width: 140,
                height: 44,
                backgroundColor: Palatt.primary,
                radius: 6,
                onTap: () {},
                data: "Share",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Palatt.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
