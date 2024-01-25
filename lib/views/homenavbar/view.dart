import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/home/homecontroller.dart';
import 'package:hello_astro_user/controllers/homenav/controller.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/views/onboading/splash.dart';
import 'package:hello_astro_user/widgets/space.dart';

import '../../widgets/textwidgets.dart';
import '../home/drawer.dart';

class HomeNavBar extends GetView<HomeNavController> {
  const HomeNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      extendBody: true,
      drawer: const HomeDrawer(),
      body: Obx(
        () => controller.body[controller.currentpage.value],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(15),
        height: 65,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Palatt.white,
            boxShadow: const [
              BoxShadow(
                color: Palatt.boxShadow,
                blurRadius: 8,
              )
            ]),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              4,
              (index) => Obx(() => TextButton(
                    onPressed: () => controller.ontapbaritem(index),
                    style: TextButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          controller.bar[index]["image"] ?? "",
                          color: controller.currentpage.value == index
                              ? Palatt.primary
                              : Palatt.black,
                          height: 20,
                          width: 20,
                        ),
                        spaceVertical(5),
                        Text((controller.bar[index]["name"] ?? "").tr,
                            style: googleFontstyle(
                              TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: controller.currentpage.value == index
                                    ? Palatt.primary
                                    : Palatt.black,
                              ),
                            ))
                      ],
                    ),
                  ))),
          //  [

          //   Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(
          //         AppImages.home,
          //         color: Palatt.black,
          //         height: 20,
          //         width: 20,
          //       ),
          //       spaceVertical(5),
          //       Text(
          //         "Home",
          //         style: TextStyle(
          //           fontSize: 12,
          //           fontWeight: FontWeight.w500,
          //           color: Palatt.black,
          //         ),
          //       )
          //     ],
          //   ),
          //   Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(
          //         AppImages.callicon,
          //         color: Palatt.black,
          //         height: 20,
          //         width: 20,
          //       ),
          //       spaceVertical(5),
          //       Text(
          //         "Call Astrologer",
          //         style: TextStyle(
          //           fontSize: 12,
          //           fontWeight: FontWeight.w500,
          //           color: Palatt.black,
          //         ),
          //       )
          //     ],
          //   ),
          //   Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(
          //         AppImages.chaticon,
          //         color: Palatt.black,
          //         height: 20,
          //         width: 20,
          //       ),
          //       spaceVertical(5),
          //       Text(
          //         "Chat Astrologer",
          //         style: TextStyle(
          //           fontSize: 12,
          //           fontWeight: FontWeight.w500,
          //           color: Palatt.black,
          //         ),
          //       )
          //     ],
          //   ),
          //   Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SvgPicture.asset(
          //         AppImages.walletborder,
          //         color: Palatt.black,
          //         height: 20,
          //         width: 20,
          //       ),
          //       spaceVertical(5),
          //       Text(
          //         "Wallet",
          //         style: TextStyle(
          //           fontSize: 12,
          //           fontWeight: FontWeight.w500,
          //           color: Palatt.black,
          //         ),
          //       )
          //     ],
          //   ),
          // ],
        ),
      ),
    );
  }
}
