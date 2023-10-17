import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/onboarding/onboardingcontroller.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';

import '../../utils/buttons.dart';
import '../../widgets/textwidgets.dart';

class OtpVerfication extends StatefulWidget {
  const OtpVerfication({super.key});

  @override
  State<OtpVerfication> createState() => _OtpVerficationState();
}

class _OtpVerficationState extends State<OtpVerfication> {
  OnboardingController onboardingController =
      Get.put(OnboardingController(), permanent: true);
  double h = Get.height, w = Get.width;
  @override
  void initState() {
    super.initState();
    onboardingController.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palatt.white,
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
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: w * .04),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.background),
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.fitWidth),
            ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: w * .213,
                      height: h * .07,
                      child: TextFormField(
                        onChanged: (value) {
                          onboardingController.nextField(
                              value, onboardingController.pin2FocusNode);
                          //previousField(value, pin2FocusNode);
                        },
                        focusNode: onboardingController.pin1FocusNode,
                        showCursor: true,
                        autofocus: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: w * .054, fontWeight: FontWeight.w900),
                        keyboardType: TextInputType.number,
                        controller: onboardingController.first,
                        maxLength: 1,
                        cursorColor: Palatt.primary,
                        // cursorColor: Theme.of(context).primaryColor,
                        decoration: InputDecoration(
                          counterText: "",
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * .0044, color: Palatt.primary),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * .0044,
                                color:
                                    onboardingController.first.text.isNotEmpty
                                        ? Palatt.primary
                                        : Palatt.otpborder),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: w * .02),

                    SizedBox(
                      width: w * .213,
                      height: h * .07,
                      child: TextFormField(
                        focusNode: onboardingController.pin2FocusNode,
                        onChanged: (value) {
                          if (value.toString().isEmpty &&
                              onboardingController.tap2 == 0) {
                            onboardingController.tap2 = 1;
                          }
                          if (value.toString().isNotEmpty) {
                            FocusScope.of(context).requestFocus(
                                onboardingController.pin3FocusNode);
                          }
                          if (value.toString().isEmpty &&
                              onboardingController.tap2 == 1) {
                            FocusScope.of(context).requestFocus(
                                onboardingController.pin1FocusNode);
                          }
                        },
                        showCursor: true,
                        autofocus: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: w * .054, fontWeight: FontWeight.w900),
                        keyboardType: TextInputType.number,
                        controller: onboardingController.second,
                        maxLength: 1,
                        cursorColor: Palatt.primary,
                        // cursorColor: Theme.of(context).primaryColor,
                        decoration: InputDecoration(
                          counterText: "",
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * .0044, color: Palatt.primary),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * .0044,
                                color:
                                    onboardingController.second.text.isNotEmpty
                                        ? Palatt.primary
                                        : Palatt.otpborder),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: w * .02),

                    SizedBox(
                      width: w * .213,
                      height: h * .07,
                      child: TextFormField(
                        focusNode: onboardingController.pin3FocusNode,
                        onChanged: (value) {
                          if (value.toString().isEmpty &&
                              onboardingController.tap3 == 0) {
                            onboardingController.tap3 = 1;
                          }
                          if (value.toString().isNotEmpty) {
                            FocusScope.of(context).requestFocus(
                                onboardingController.pin4FocusNode);
                          }
                          if (value.toString().isEmpty &&
                              onboardingController.tap3 == 1) {
                            FocusScope.of(context).requestFocus(
                                onboardingController.pin2FocusNode);
                          }
                        },
                        showCursor: true,
                        autofocus: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: w * .054, fontWeight: FontWeight.w900),
                        keyboardType: TextInputType.number,
                        controller: onboardingController.third,
                        maxLength: 1,
                        cursorColor: Palatt.primary,
                        // cursorColor: Theme.of(context).primaryColor,
                        decoration: InputDecoration(
                          counterText: "",
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * .0044, color: Palatt.primary),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * .0044,
                                color:
                                    onboardingController.third.text.isNotEmpty
                                        ? Palatt.primary
                                        : Palatt.otpborder),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: w * .02),

                    SizedBox(
                      width: w * .213,
                      height: h * .07,
                      child: TextFormField(
                        focusNode: onboardingController.pin4FocusNode,
                        onChanged: (value) {
                          if (value.toString().isEmpty &&
                              onboardingController.tap3 == 0) {
                            onboardingController.tap3 = 1;
                          }
                          if (value.toString().isNotEmpty) {
                            FocusScope.of(context).unfocus();
                          }
                          if (value.toString().isEmpty &&
                              onboardingController.tap3 == 1) {
                            FocusScope.of(context).requestFocus(
                                onboardingController.pin3FocusNode);
                          }
                        },
                        showCursor: true,
                        autofocus: false,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: w * .054, fontWeight: FontWeight.w900),
                        keyboardType: TextInputType.number,
                        controller: onboardingController.fourth,
                        maxLength: 1,
                        cursorColor: Palatt.primary,
                        // cursorColor: Theme.of(context).primaryColor,
                        decoration: InputDecoration(
                          counterText: "",
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * .0044, color: Palatt.primary),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * .0044,
                                color:
                                    onboardingController.fourth.text.isNotEmpty
                                        ? Palatt.primary
                                        : Palatt.otpborder),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),

                    // _textFieldOTP(
                    //   context,
                    //   first,
                    //   first: true,
                    //   last: false,
                    // ),
                    // SizedBox(width: w * .02),
                    // _textFieldOTP(
                    //   context,
                    //   second,
                    //   first: false,
                    //   last: false,
                    // ),
                    // SizedBox(width: w * .02),
                    // _textFieldOTP(
                    //   context,
                    //   third,
                    //   first: false,
                    //   last: false,
                    // ),
                    // SizedBox(width: w * .02),
                    // _textFieldOTP(
                    //   context,
                    //   fourth,
                    //   first: false,
                    //   last: true,
                    // ),
                  ],
                ),
                SizedBox(
                  height: h * .024,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textStyle('Didn\'t Receive Code? ', Palatt.blacklightshade,
                        fontSize: w * .039, fontWeight: FontWeight.w900),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Resend Now',
                        style: TextStyle(
                          fontSize: w * .039,
                          color: Palatt.primary,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: h * .050,
                ),
                EltdButton(
                  title: 'Continue',
                  width: w * .92,
                  height: h * .065,
                  press: () {
                    String sub =
                        "${onboardingController.first.text}${onboardingController.second.text}${onboardingController.third.text}${onboardingController.fourth.text}";

                    if (onboardingController.first.text.isNotEmpty &&
                        onboardingController.second.text.isNotEmpty &&
                        onboardingController.third.text.isNotEmpty &&
                        onboardingController.fourth.text.isNotEmpty) {
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
                  },
                  color: Palatt.primary,
                  radius: 10.0,
                  fntSize: w * .04,
                  fntwgt: FontWeight.w500,
                ),
                SizedBox(
                  height: h * .193,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
