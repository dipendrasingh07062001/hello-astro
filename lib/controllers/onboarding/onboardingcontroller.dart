import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/routes/app_pages.dart';

class OnboardingController extends GetxController {
  ///// login view parameters and functions
  bool isPhoneError = false;
  bool isPhonevalidError = false;
  TextEditingController phoneController =
      TextEditingController(text: "0000000000");
  bool val = false;
  bool isLoading = false;

  splashcounterstart() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed(Routes.login);
    });
  }

  ///// otp verification veiw parameters
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  TextEditingController third = TextEditingController();
  TextEditingController fourth = TextEditingController();
  bool isloading = false;

  late FocusNode pin1FocusNode;
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  var tap = 0;
  var tap1 = 0;
  var tap2 = 0;
  var tap3 = 0;
  @override
  void onInit() {
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    super.onInit();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  void previousField(String value, FocusNode focusNode) {
    if (value.isEmpty) {
      focusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    super.dispose();
    pin1FocusNode.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }
}
