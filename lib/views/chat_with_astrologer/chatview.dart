import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/homenav/controller.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/utils/buttons.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/views/bottomsheet/filtersheet.dart';
import 'package:hello_astro_user/views/bottomsheet/sortby.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/space.dart';

import '../../widgets/cards.dart';

class ChatWithAstrologer extends GetView {
  const ChatWithAstrologer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget callChat = Obx(() => SizedBox(
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
                      color:
                          Get.find<HomeNavController>().currentpage.value == 1
                              ? Palatt.primary
                              : Palatt.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.callfilled,
                          color:
                              Get.find<HomeNavController>().currentpage.value ==
                                      1
                                  ? Palatt.white
                                  : Palatt.black,
                          height: 13,
                        ),
                        spaceHorizontal(10),
                        Text(
                          Words.Call.tr,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Get.find<HomeNavController>()
                                        .currentpage
                                        .value ==
                                    1
                                ? Palatt.white
                                : Palatt.black,
                          ),
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color:
                          Get.find<HomeNavController>().currentpage.value == 2
                              ? Palatt.primary
                              : Palatt.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.rocketchat,
                          color:
                              Get.find<HomeNavController>().currentpage.value ==
                                      2
                                  ? Palatt.white
                                  : Palatt.black,
                          height: 13,
                        ),
                        spaceHorizontal(10),
                        Text(
                          Words.Chat.tr,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Get.find<HomeNavController>()
                                        .currentpage
                                        .value ==
                                    2
                                ? Palatt.white
                                : Palatt.black,
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ],
          ),
        ));
    Widget view = GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 20,
      childAspectRatio: 0.7,
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      children: List.generate(
        10,
        (index) => Padding(
          padding: EdgeInsets.only(top: index == 0 || index == 1 ? 10 : 0),
          child: const AstroCard(),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Palatt.white,
      appBar: CustomAppBar(
        title: Get.find<HomeNavController>().currentpage.value == 1
            ? Words.callWithAstrologer.tr
            : Words.chatWithAstrologer.tr,
      ),
      body: Column(
        children: [
          spaceVertical(10),
          Row(
            children: [
              spaceHorizontal(15),
              callChat,
              const Spacer(),
              GestureDetector(
                onTap: () => Get.bottomSheet(
                  const FilterSheet(),
                  isScrollControlled: true,
                ),
                child: CircleAvatar(
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
              ),
              spaceHorizontal(10),
              GestureDetector(
                onTap: () => Get.bottomSheet(const SortBy(), persistent: false),
                child: CircleAvatar(
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
                        // height: 30,
                        backgroundColor: Palatt.white,
                        radius: 40,
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 13,
                        ),
                        style: googleFontstyle(const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Palatt.black)),
                        margin: EdgeInsets.only(
                          left: index == 0 ? 15 : 0,
                          right: 6,
                          top: 10,
                          bottom: 10,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 12,
                            color: Palatt.boxShadow,
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
