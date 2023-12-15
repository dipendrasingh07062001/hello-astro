import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
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
                    title: "My Orders",
                    onTap: () {
                      Get.toNamed(Routes.myorders);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.blogs,
                    title: "Blogs",
                    onTap: () {},
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.recargehistory,
                    title: "Recharge History",
                    onTap: () {
                      Get.toNamed(Routes.rechargeHistory);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.following,
                    title: "Following",
                    onTap: () {
                      Get.toNamed(Routes.following);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.refernearn,
                    title: "Refer and earn",
                    onTap: () {
                      Get.toNamed(Routes.refernearn);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.directoryofastro,
                    title: "Directory of Astro",
                    onTap: () {
                      Get.toNamed(Routes.directoryview);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.helpnsupport,
                    title: "Help & Support",
                    onTap: () {
                      Get.toNamed(Routes.helpnsupport);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.aboutus,
                    title: "About us",
                    onTap: () {
                      Get.toNamed(Routes.aboutus);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.privacypolicy,
                    title: "Privacy Policy",
                    onTap: () {
                      Get.toNamed(Routes.privacypolicy);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.termsnconditions,
                    title: "Terms and Conditions",
                    onTap: () {
                      Get.toNamed(Routes.termsncondition);
                    },
                  ),
                  spaceVertical(10),
                  DrawerTile(
                    image: AppImages.faqs,
                    title: "FAQ's",
                    onTap: () {
                      Get.toNamed(Routes.faqs);
                    },
                    showdivider: false,
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
            spaceVertical(10),
            EltdButton(
              color: Palatt.white,
              foregroundColor: Palatt.primary,
              title: "Log Out",
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
