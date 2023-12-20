import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/views/bottomsheet/sortby.dart';
import 'package:hello_astro_user/views/directory/widgets.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';

import '../../utils/buttons.dart';
import '../../utils/imageslink.dart';
import '../../widgets/space.dart';
import '../bottomsheet/filtersheet.dart';

class DirectoryView extends GetView {
  const DirectoryView({super.key});
  @override
  Widget build(BuildContext context) {
    Widget menubar = Row(
      children: [
        spaceHorizontal(15),
        SizedBox(
          height: 32,
          width: 240,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                height: 32,
                width: 186,
                decoration: BoxDecoration(
                    color: Palatt.primaryLight,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      width: 1,
                      color: Palatt.primary,
                    )),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color: Palatt.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "All Astrolger",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Palatt.white,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color: Palatt.transparent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Favourites",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Palatt.primary,
                      ),
                    ),
                  ))
                ],
              ),
            ],
          ),
        ),
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
          onTap: () => Get.bottomSheet(
            const SortBy(),
            // isScrollControlled: true,
          ),
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
    );
    Widget astroView = ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(15),
      separatorBuilder: (context, index) {
        return spaceVertical(15);
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.toNamed(Routes.directoryastrodetail),
          child: Container(
            decoration: BoxDecoration(
                color: Palatt.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Palatt.yellow2nd),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 6,
                    spreadRadius: 3,
                    color: Palatt.greybackground,
                  )
                ]),
            width: Get.width,
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                SizedBox(
                  width: 99,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 33,
                        backgroundColor: Palatt.primary,
                        child: CircleAvatar(
                          radius: 32.5,
                          backgroundColor: Palatt.white,
                          child: CircleAvatar(
                            radius: 31.5,
                            backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                            ),
                          ),
                        ),
                      ),
                      spaceVertical(10),
                      Container(
                        width: 66,
                        height: 15,
                        decoration: BoxDecoration(
                            color: Palatt.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Palatt.boxShadow, blurRadius: 3)
                            ]),
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
                      spaceVertical(5),
                      Text(
                        "View - 70000",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                spaceHorizontal(10),
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Name : ",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Palatt.black,
                                ),
                              ),
                              const Text(
                                "Zoha Merchant",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Palatt.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Expertise : ",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Palatt.black,
                                ),
                              ),
                              const Text(
                                "Tarot, Psychic",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Palatt.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Language : ",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Palatt.black,
                                ),
                              ),
                              const Text(
                                "English, Hindi",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Palatt.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Years of experience : ",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Palatt.black,
                                ),
                              ),
                              const Text(
                                "22 Years",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Palatt.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Location : ",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Palatt.black,
                                ),
                              ),
                              const Text(
                                "Rajasthan, Jaipur",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Palatt.black,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Tempore magni minus...",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Palatt.black,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 9,
                          backgroundColor: Palatt.primaryLight,
                          child: Icon(
                            Icons.favorite_border,
                            color: Palatt.primary,
                            size: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
    return Scaffold(
      appBar: CustomAppBar(
        title: "Directory",
      ),
      body: Column(
        children: [
          registerbutton(),
          spaceVertical(15),
          menubar,
          Expanded(child: astroView)
        ],
      ),
    );
  }
}
