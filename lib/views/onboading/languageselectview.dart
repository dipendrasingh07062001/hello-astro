import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/onboarding/languagecontroller.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/views/onboading/widgets.dart';

import '../../theme/colorpalatt.dart';
import '../../utils/buttons.dart';
import '../../utils/imageslink.dart';
import '../../widgets/backgroundimages.dart';
import '../../widgets/loader.dart';
import '../../widgets/textwidgets.dart';

class LanguageSelectView extends GetView<LanguageController> {
  LanguageSelectView({super.key});
  final double h = Get.height, w = Get.width;
  @override
  Widget build(BuildContext context) {
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
          title: textStyle(Words.selectLanguage.tr, Palatt.black,
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
                    AppImages.languageview,
                    width: w * .63,
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.languages.length,
                      itemBuilder: (_, index) {
                        var lang = controller.languages[index];
                        return Obx(() => LanguageTile(
                              lang["language"], // "English",
                              lang["language"], // "English",
                              "English",
                              isTypeSelected: controller.selectedlanguage.value,
                              onTap: () => controller.selectlang(index),
                            ));
                      }),
                  // Padding(
                  //   padding: EdgeInsets.only(
                  //       top: h * .04, right: w * .09, bottom: h * .024),
                  //   child: Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: textStyle(
                  //         'Have a Referral code?', Palatt.blacklightshade,
                  //         fontSize: 17, fontWeight: FontWeight.w500),
                  //   ),
                  // ),
                  const SizedBox(
                    height: 30,
                  ),
                  Obx(
                    () => controller.isLoading.value
                        ? loader
                        : EltdButton(
                            title: 'Continue',
                            width: w * .92,
                            height: h * .065,
                            press: () {
                              Get.offAllNamed(Routes.homenav);
                            },
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
