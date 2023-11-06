import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/api/apiconstants.dart';
import 'package:hello_astro_user/routes/app_pages.dart';

import '../../api/apiservices.dart';
import '../../theme/colorpalatt.dart';
import '../../widgets/textwidgets.dart';

class OnboardingController extends GetxController {
  ///// login view parameters and functions
  bool isPhoneError = false;
  bool isPhonevalidError = false;
  TextEditingController phoneController = TextEditingController();
  bool val = false;
  RxBool isLoading = false.obs;

  splashcounterstart() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAndToNamed(Routes.login);
    });
  }

  ///// otp verification veiw parameters
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  TextEditingController third = TextEditingController();
  TextEditingController fourth = TextEditingController();

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

  setphonenumber(String number) {
    phoneController.text = number;
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

  ontapContinue(BuildContext context) {
    if (phoneController.text.isEmpty) {
      final snackBar = SnackBar(
        content: textStyle('Please enter your phone number', Palatt.white,
            fontSize: 16),
        backgroundColor: Palatt.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return;
    }

    if (phoneController.text.length != 10) {
      final snackBar = SnackBar(
        content: textStyle('Please enter your valid phone number', Palatt.white,
            fontSize: 16),
        backgroundColor: Palatt.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return;
    }

    if (val == false) {
      final snackBar = SnackBar(
        content: textStyle('Please accept terms & conditions', Palatt.white,
            fontSize: 16),
        backgroundColor: Palatt.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return;
    }
    signin();
  }

// signup/login api
  signin() async {
    isLoading.value = true;
    ApiClient apiClient = ApiClient();
    Map<String, String> map = {"phone": phoneController.text};
    await apiClient.postRequest(ApiUrls.signUp, map).then((value) {
      if (value != null) {
        Get.toNamed(Routes.otpverification, arguments: phoneController.text);
        isLoading.value = false;
      }
    });
    isLoading.value = false;
  }

  onotpverfy(BuildContext context) async {
    String sub = "${first.text}${second.text}${third.text}${fourth.text}";

    if (first.text.isNotEmpty &&
        second.text.isNotEmpty &&
        third.text.isNotEmpty &&
        fourth.text.isNotEmpty) {
      isLoading.value = true;
      ApiClient apiClient = ApiClient();
      Map<String, String> map = {"phone": phoneController.text, "otp": sub};
      await apiClient.postRequest(ApiUrls.verifiotp, map).then((value) {
        if (value != null) {
          print("==$value");
          Get.toNamed(Routes.home);
          isLoading.value = false;
        }
      });
      isLoading.value = false;
    } else {
      final snackBar = SnackBar(
        content: textStyle(
          'Please enter valid OTP',
          Palatt.white,
          fontSize: 16,
        ),
        backgroundColor: Palatt.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
