// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import '../../controllers/onboarding/onboardingcontroller.dart';

class TheFirstScreen extends StatelessWidget {
  TheFirstScreen({super.key});
  OnboardingController controller =
      Get.put(OnboardingController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    controller.splashcounterstart();
    Widget logo = Image.asset(AppImages.splashpic);
    return Scaffold(
      backgroundColor: Palatt.primary,
      body: Center(
        child: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              logo,
            ],
          ),
        ),
      ),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(milliseconds: 500),
        () => Get.to(() => TheFirstScreen(),
            transition: Transition.downToUp,
            duration: const Duration(seconds: 1)));
    return Container(
      height: Get.height,
      width: Get.width,
      color: Palatt.primary,
    );
  }
}
