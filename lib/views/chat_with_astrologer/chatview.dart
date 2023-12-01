import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/buttons.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/space.dart';

class ChatWithAstrologer extends GetView {
  const ChatWithAstrologer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget callChat = SizedBox(
      height: 32,
      width: 186,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: 32,
            width: 186,
            decoration: BoxDecoration(
                color: Palatt.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 1,
                  color: Palatt.grey,
                )),
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                height: 32,
                decoration: BoxDecoration(
                  color: Palatt.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppImages.callfilled,
                      color: Palatt.black,
                      height: 13,
                    ),
                    spaceHorizontal(10),
                    const Text(
                      "Call",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                height: 32,
                decoration: BoxDecoration(
                  color: Palatt.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppImages.rocketchat,
                      color: Palatt.white,
                      height: 13,
                    ),
                    spaceHorizontal(10),
                    const Text(
                      "Chat",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Palatt.white,
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
    Widget view = GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 20,
      childAspectRatio: 0.7,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      children: List.generate(10, (index) => const AstroCard()),
    );

    return Scaffold(
      backgroundColor: Palatt.white,
      appBar: const CustomAppBar(
        title: "Chat with Astrologers",
      ),
      body: Column(
        children: [
          spaceVertical(10),
          Row(
            children: [
              spaceHorizontal(15),
              callChat,
              const Spacer(),
              CircleAvatar(
                backgroundColor: Palatt.grey,
                radius: 13,
                child: CircleAvatar(
                  radius: 12.5,
                  backgroundColor: Palatt.white,
                  child: SvgPicture.asset(
                    AppImages.filter,
                    height: 11,
                    width: 11,
                  ),
                ),
              ),
              spaceHorizontal(10),
              CircleAvatar(
                backgroundColor: Palatt.grey,
                radius: 13,
                child: CircleAvatar(
                  radius: 12.5,
                  backgroundColor: Palatt.white,
                  child: SvgPicture.asset(
                    AppImages.menu_burger,
                    height: 11,
                    width: 11,
                  ),
                ),
              ),
              spaceHorizontal(15),
            ],
          ),
          spaceVertical(10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  10,
                  (index) => RRButton(
                        onTap: () {},
                        data: "Marriage",
                        height: 30,
                        backgroundColor: Palatt.white,
                        radius: 40,
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 13,
                        ),
                        margin: EdgeInsets.only(
                          left: index == 0 ? 15 : 0,
                          right: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 8,
                            spreadRadius: 2,
                            color: Palatt.greybackground,
                          )
                        ],
                      )),
            ),
          ),
          Expanded(child: view),
        ],
      ),
    );
  }
}

class AstroCard extends StatelessWidget {
  const AstroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Palatt.yellow2nd,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 3,
              color: Palatt.greybackground,
            )
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: Stack(
              children: [
                const Positioned(
                  top: 10,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 33,
                    backgroundColor: Palatt.white,
                    child: CircleAvatar(
                      radius: 31,
                      backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 63,
                    left: Get.width * 0.11,
                    right: Get.width * 0.11,
                    child: Center(
                      child: Container(
                        width: 66,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Palatt.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              5,
                              (index) => const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1),
                                    child: Icon(
                                      Icons.star,
                                      size: 10,
                                      color: Palatt.primary,
                                    ),
                                  )),
                        ),
                      ),
                    )),
                const Positioned(
                  top: 79,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Text(
                      "70000 Orders",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Palatt.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Zoha Merchant",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                  const Text(
                    "English, Hindi",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Palatt.black,
                    ),
                  ),
                  const Text(
                    "English, Hindi",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Palatt.black,
                    ),
                  ),
                  const Text(
                    "Exp: 6 year",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Palatt.grey,
                    ),
                  ),
                  const Text(
                    "Jaipur, Raj",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                      color: Palatt.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "₹ 12/min",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palatt.primary,
                        ),
                      ),
                      RRButton2(
                        height: 25,
                        width: 57,
                        backgroundColor: Palatt.primary,
                        radius: 3,
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppImages.rocketchat,
                            ),
                            spaceHorizontal(5),
                            const Text(
                              "Chat",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Palatt.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
