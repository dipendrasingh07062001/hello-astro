// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';

import '../../controllers/onboarding/onboardingcontroller.dart';

class Splash extends StatelessWidget {
  Splash({super.key});
  OnboardingController controller =
      Get.put(OnboardingController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    controller.splashcounterstart();
    return Scaffold(
        backgroundColor: Palatt.primary,
        body: Center(
          child: Image.asset(
            AppImages.splashpic,
            // height: 250,
            width: Get.width * 0.6,
          ),
        ));
  }
}
