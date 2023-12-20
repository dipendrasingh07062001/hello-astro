import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/utils/buttons.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/space.dart';

import '../../routes/app_pages.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palatt.white,
      appBar: const CustomAppBar(title: "Settings"),
      body: ListView(
        children: [
          spaceVertical(12),
          RRButton2(
              onTap: () {
                Get.toNamed(Routes.aboutus);
              },
              height: 47,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              backgroundColor: Palatt.white,
              radius: 10,
              boxShadow: const [
                BoxShadow(color: Palatt.boxShadow, blurRadius: 6),
              ],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "About us",
                    style: googleFontstyle(const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black)),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              )),
          spaceVertical(15),
          RRButton2(
              onTap: () {
                Get.toNamed(Routes.privacypolicy);
              },
              height: 47,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              backgroundColor: Palatt.white,
              radius: 10,
              boxShadow: const [
                BoxShadow(color: Palatt.boxShadow, blurRadius: 6),
              ],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy Policy",
                    style: googleFontstyle(const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black)),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              )),
          spaceVertical(15),
          RRButton2(
              onTap: () {
                Get.toNamed(Routes.termsncondition);
              },
              height: 47,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              backgroundColor: Palatt.white,
              radius: 10,
              boxShadow: const [
                BoxShadow(color: Palatt.boxShadow, blurRadius: 6),
              ],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Terms and Conditions",
                    style: googleFontstyle(const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black)),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              )),
          spaceVertical(15),
        ],
      ),
    );
  }
}
