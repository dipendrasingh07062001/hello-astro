// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';

import '../../controllers/onboarding/onboardingcontroller.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class Splash extends StatelessWidget {
  Splash({super.key});
  OnboardingController controller =
      Get.put(OnboardingController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    controller.splashcounterstart();
    return EasySplashScreen(
      logo: Image.asset(AppImages.splashpic),
      logoWidth: 130,

      // title: Text(
      //   "Title",
      //   style: TextStyle(
      //     fontSize: 18,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
      backgroundColor: Palatt.primary,
      showLoader: true,
      // loadingText: Text("Loading..."),
      // navigator: ,
      loaderColor: Palatt.primary,
      durationInSeconds: 3,
    );
  }
}
