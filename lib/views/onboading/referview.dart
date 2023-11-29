import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../controllers/onboarding/refercontroller.dart';
import '../../theme/colorpalatt.dart';
import '../../utils/buttons.dart';
import '../../utils/imageslink.dart';
import '../../widgets/backgroundimages.dart';
import '../../widgets/loader.dart';
import '../../widgets/textwidgets.dart';

class ReferCodeView extends StatelessWidget {
  ReferCodeView({super.key});
  final ReferController referController =
      Get.put(ReferController(), permanent: false);
  double h = Get.height, w = Get.width;
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
        title: textStyle('Referral Code', Palatt.black,
            fontSize: w * .059, fontWeight: FontWeight.w500),
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
              Background2(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: h * .045,
                    ),
                    SvgPicture.asset(
                      AppImages.login,
                      width: w * .63,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: h * .04, right: w * .09, bottom: h * .024),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: textStyle(
                            'Have a Referral code?', Palatt.blacklightshade,
                            fontSize: 17, fontWeight: FontWeight.w500),
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
                        maxLength: 10,
                        controller: referController.referController,
                        onChanged: (value) {},
                        style: TextStyle(fontSize: w * .043),
                        decoration: InputDecoration(
                          hintText: 'Referral code',
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
                      height: h * .05,
                    ),
                    Obx(
                      () => referController.isLoading.value
                          ? loader
                          : EltdButton(
                              title: 'Continue',
                              width: w * .92,
                              height: h * .065,
                              press: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}