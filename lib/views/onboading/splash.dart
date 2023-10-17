// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';

import '../../controllers/onboarding/onboardingcontroller.dart';

class Splash extends StatelessWidget {
  Splash({super.key});
  OnboardingController controller =
      Get.put(OnboardingController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    controller.splashcounterstart();
    return const Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
          child: Text(
            "Hello Astrologer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 66,
              color: Palatt.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ));
  }
}
