import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/buttons.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello_astro_user/widgets/backgroundimages.dart';
import '../../controllers/onboarding/onboardingcontroller.dart';
import '../../widgets/loader.dart';
import '../../widgets/textwidgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  OnboardingController onboardingController =
      Get.put(OnboardingController(), permanent: false);
  double h = Get.height, w = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palatt.white,
      appBar: AppBar(
        elevation: 0,
        leading: ModalRoute.of(context)?.canPop == true
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_rounded,
                  size: w * .075,
                  // color: colBlack,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            : null,
        centerTitle: true,
        title: textStyle('Login Now', Palatt.black,
            fontSize: w * .058, fontWeight: FontWeight.w500),
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: w * .04),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.background),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth),
          ),
          child: Stack(
            children: [
              const Background2(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: h * .045,
                    ),
                    SvgPicture.asset(AppImages.login, width: w * .65),
                    Padding(
                      padding: EdgeInsets.only(
                          top: h * .04, right: w * .09, bottom: h * .024),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: textStyle('Please enter your phone number',
                            Palatt.blacklightshade,
                            fontSize: w * .041, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: h * .063,
                      decoration: const BoxDecoration(
                          color: Palatt.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Palatt.boxShadow,
                              blurRadius: 5,
                              offset: Offset(-1, 2),
                            ),
                          ]),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        controller: onboardingController.phoneController,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (value) {},
                        style: TextStyle(fontSize: w * .043),
                        decoration: InputDecoration(
                          hintText: 'Phone number',
                          hintStyle: TextStyle(
                              fontSize: w * .039,
                              color: const Color(0xffa4a4a4)),
                          fillColor: Colors.transparent,
                          filled: true,
                          counterText: "",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * 0, color: Colors.transparent),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: w * 0, color: Colors.transparent),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                          ),
                          focusedErrorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          errorBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * .02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: w * .05,
                          child: Transform.scale(
                            scale: w * .003,
                            child: Checkbox(
                              activeColor: Palatt.primary,
                              value: onboardingController.val,
                              onChanged: (value) {
                                setState(() {
                                  onboardingController.val = value!;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * .026,
                        ),
                        textStyle('I agree to the ', Palatt.blacklightshade,
                            fontSize: w * .043, fontWeight: FontWeight.w500),
                        InkWell(
                            child: Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                  fontSize: w * .043,
                                  color: Palatt.primary,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline),
                            ),
                            onTap: () =>
                                'https://docs.flutter.io/flutter/services/UrlLauncher-class.html'),
                      ],
                    ),
                    SizedBox(
                      height: h * .03,
                    ),
                    Obx(
                      () => onboardingController.isLoading.value == true
                          ? loader
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Palatt.primary,
                                minimumSize: Size(w * .94, h * .065),
                                maximumSize: Size(w * .94, h * .065),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                              onPressed: () =>
                                  onboardingController.ontapContinue(context),
                              child: textStyle('Continue', Palatt.white,
                                  fontSize: w * .04,
                                  fontWeight: FontWeight.w500),
                            ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    textStyle('OR', Palatt.primary,
                        fontSize: w * .039, fontWeight: FontWeight.w500),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Palatt.transparent,
                          minimumSize: Size(w * .94, h * .065),
                          maximumSize: Size(w * .94, h * .065),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            // side: const BorderSide(color: Palatt.primary),
                          ),
                          elevation: 0),
                      onPressed: () {},
                      child: textStyle(
                        'Register yourself in Hello Astrologer Directory',
                        Palatt.primary,
                        fontSize: w * .04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: RRButton(
                  onTap: () {
                    Get.toNamed(Routes.homenav);
                  },
                  height: 30,
                  width: 60,
                  data: "Skip",
                  style: TextStyle(
                    color: Palatt.primary,
                    fontSize: w * .04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
