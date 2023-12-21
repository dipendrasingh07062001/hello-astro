import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/api/apiconstants.dart';
import 'package:hello_astro_user/api/preference.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/utils/snackbar.dart';

import '../../api/apiservices.dart';
import '../../models/user/usermodel.dart';
import '../../theme/colorpalatt.dart';
import '../../widgets/textwidgets.dart';

class OnboardingController extends GetxController {
  ///// login view parameters and functions
  bool isPhoneError = false;
  bool isPhonevalidError = false;
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  bool val = false;
  RxBool isLoading = false.obs;

  splashcounterstart() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.intro);
    });
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
      redsnackbar("Please enter your phone number");
      return;
    }

    if (phoneController.text.length != 10) {
      redsnackbar("Please enter valid phone number");
      return;
    }

    if (val == false) {
      redsnackbar("Please accept terms & conditions");
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
    // Get.toNamed(Routes.otpverification, arguments: phoneController.text);
  }

  onotpverfy() async {
    if (otpController.text.isNotEmpty) {
      isLoading.value = true;
      ApiClient apiClient = ApiClient();
      Map<String, String> map = {
        "phone": phoneController.text,
        "otp": otpController.text
      };
      await apiClient.postRequest(ApiUrls.verifiotp, map).then((value) {
        if (value != null) {
          debugPrint("==$value");
          // Get.toNamed(Routes.home);
          Logindata data = Logindata.fromJson(value);
          UserData user = data.userdata!;
          if (user.isLogin ?? false) {
            Preference.setString(
                PreferenceConstants.userid, user.id.toString());
            Preference.setString(PreferenceConstants.tokenid, data.token ?? "");
            Preference.setString(PreferenceConstants.phone, user.phone ?? "");
            Preference.setString(
                PreferenceConstants.fullname, user.firstName ?? "");
            // Preference.setString(
            // PreferenceConstants.gender, user.gender ?? "");
          } else {
            Preference.setString(
                PreferenceConstants.userid, user.id.toString());
            Preference.setString(PreferenceConstants.tokenid, data.token ?? "");
          }

          isLoading.value = false;
        }
      }).onError((error, stackTrace) {
        redsnackbar("$error");
        isLoading.value = false;
      });
      isLoading.value = false;
    } else {
      redsnackbar("Please enter valid OTP");
    }
  }
}
