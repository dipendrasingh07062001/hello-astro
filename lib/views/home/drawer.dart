import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/widgets/dialogs/logout.dart';
import 'package:hello_astro_user/widgets/space.dart';
import '../../utils/buttons.dart';
import '../../utils/constants.dart';
import '../../widgets/tiles.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        bottomRight: Radius.circular(10),
      )),
      backgroundColor: Palatt.primary,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: CustomCloseButton(
                  onTap: () {
                    Get.back();
                  },
                  backgroundColor: Palatt.white.withOpacity(0.3),
                  iconColor: Palatt.white,
                ),
              ),
            ),
            spaceVertical(20),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.profile);
              },
              leading: const CircleAvatar(
                radius: 23,
                backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                ),
              ),
              title: const Text(
                "Rohan Sharma",
                style: TextStyle(
                  fontSize: 17,
                  color: Palatt.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: const Text(
                "+91-7891023456",
                style: TextStyle(
                  color: Palatt.white,
                  fontSize: 13,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                children: [
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.myorders,
                    title: Words.MyOrders.tr,
                    onTap: () {
                      Get.toNamed(Routes.myorders);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.blogs,
                    title: Words.Blogs.tr,
                    onTap: () {},
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.recargehistory,
                    title: Words.RechargeHistory.tr,
                    onTap: () {
                      Get.toNamed(Routes.rechargeHistory);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.following,
                    title: Words.Following.tr,
                    onTap: () {
                      Get.toNamed(Routes.following);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.refernearn,
                    title: Words.ReferandEarn.tr,
                    onTap: () {
                      Get.toNamed(Routes.refernearn);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.directoryofastro,
                    title: Words.DirectoryofAstro.tr,
                    onTap: () {
                      Get.toNamed(Routes.directoryview);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.helpnsupport,
                    title: Words.HelpnSupport.tr,
                    onTap: () {
                      Get.toNamed(Routes.helpnsupport);
                    },
                  ),
                  // spaceVertical(10),
                  // DrawerTile(
                  //   image: AppImages.aboutus,
                  //   title: "About us",
                  //   onTap: () {
                  //     Get.toNamed(Routes.aboutus);
                  //   },
                  // ),
                  // spaceVertical(10),
                  // DrawerTile(
                  //   image: AppImages.privacypolicy,
                  //   title: "Privacy Policy",
                  //   onTap: () {
                  //     Get.toNamed(Routes.privacypolicy);
                  //   },
                  // ),
                  // spaceVertical(10),
                  // DrawerTile(
                  //   image: AppImages.termsnconditions,
                  //   title: "Terms and Conditions",
                  //   onTap: () {
                  //     Get.toNamed(Routes.termsncondition);
                  //   },
                  // ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.faqs,
                    title: Words.FAQs.tr,
                    onTap: () {
                      Get.toNamed(Routes.faqs);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.settings,
                    title: Words.Settings.tr,
                    onTap: () {
                      Get.toNamed(Routes.settings);
                    },
                  ),
                ],
              ),
            ),
            spaceVertical(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: socialmedialist
                  .map((e) =>
                      SocialMediabutton(e["image"] ?? "", e["link"] ?? ""))
                  .toList(),
            ),
            spaceVertical(5),
            RRButton(
              onTap: () {},
              data: Words.RegisterasAstrologer.tr,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Palatt.white,
              ),
            ),
            spaceVertical(10),
            EltdButton(
              color: Palatt.white,
              foregroundColor: Palatt.primary,
              title: Words.logout.tr,
              height: 50,
              width: 254,
              radius: 10,
              elevation: 0,
              press: () => Get.dialog(LogOut()),
            ),
            spaceVertical(10),
          ],
        ),
      ),
    );
  }
}
