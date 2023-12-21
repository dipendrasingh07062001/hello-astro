import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:pinput/pinput.dart';
import 'package:hello_astro_user/controllers/onboarding/onboardingcontroller.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/widgets/loader.dart';

import '../../utils/buttons.dart';
import '../../widgets/backgroundimages.dart';
import '../../widgets/textwidgets.dart';

class OtpVerfication extends StatefulWidget {
  const OtpVerfication({super.key});

  @override
  State<OtpVerfication> createState() => _OtpVerficationState();
}

class _OtpVerficationState extends State<OtpVerfication> {
  OnboardingController onboardingController =
      Get.put(OnboardingController(), permanent: false);
  double h = Get.height, w = Get.width;
  @override
  void initState() {
    super.initState();
    onboardingController.setphonenumber(Get.arguments);
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 75,
      height: 53,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Palatt.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Palatt.boxShadow, width: 1.8),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    final focusedPinTheme = PinTheme(
      width: 75,
      height: 53,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Palatt.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Palatt.primary, width: 1.8),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    final disabledPinTheme = PinTheme(
      width: 75,
      height: 53,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Palatt.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Palatt.boxShadow, width: 1.8),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return Container(
      decoration: const BoxDecoration(
        color: Palatt.white,
        image: DecorationImage(
            image: AssetImage(AppImages.background),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fitWidth),
      ),
      child: Scaffold(
        backgroundColor: Palatt.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Palatt.white,
          leading: ModalRoute.of(context)?.canPop == true
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    size: w * .075,
                    color: Palatt.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              : null,
          centerTitle: true,
          title: textStyle('Verification', Palatt.black,
              fontSize: w * .059, fontWeight: FontWeight.w500),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: w * .04),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: h * .045,
                  ),
                  SvgPicture.asset(
                    AppImages.otp,
                    width: w * .63,
                  ),
                  SizedBox(height: h * .048),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textStyle('OTP has been sent on your registered ',
                          Palatt.blacklightshade,
                          fontSize: w * .043, fontWeight: FontWeight.w500),
                      Row(
                        children: [
                          textStyle('Phone Number ', Palatt.blacklightshade,
                              fontSize: w * .043, fontWeight: FontWeight.w500),
                          textStyle('xxxxxxxx', Palatt.primary,
                              fontSize: w * .043, fontWeight: FontWeight.w500),
                          textStyle(
                              onboardingController.phoneController.text
                                  .substring(8, 10),
                              Palatt.primary,
                              fontSize: w * .043,
                              fontWeight: FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: h * .02),
                  Pinput(
                    controller: onboardingController.otpController,
                    length: 4,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    disabledPinTheme: disabledPinTheme,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  SizedBox(
                    height: h * .024,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textStyle(
                          'Didn\'t Receive Code? ', Palatt.blacklightshade,
                          fontSize: 16, fontWeight: FontWeight.w600),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Resend Now',
                          style: googleFontstyle(const TextStyle(
                            fontSize: 16,
                            color: Palatt.primary,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * .050,
                  ),
                  Obx(
                    () => onboardingController.isLoading.value
                        ? loader
                        : EltdButton(
                            title: 'Continue',
                            width: w * .92,
                            height: h * .065,
                            press: onboardingController.onotpverfy,
                            color: Palatt.primary,
                            radius: 10.0,
                            fntSize: w * .04,
                            fntwgt: FontWeight.w500,
                          ),
                  ),
                  SizedBox(
                    height: h * .193,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
