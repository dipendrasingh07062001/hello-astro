import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../theme/colorpalatt.dart';
import '../../utils/buttons.dart';
import '../../widgets/space.dart';

class SortBy extends StatelessWidget {
  const SortBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.height * 0.1),
      decoration: const BoxDecoration(
          color: Palatt.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          spaceVertical(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                spaceHorizontal(Get.width * 0.05),
                const Text(
                  "Sort by",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Palatt.black,
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.close(1),
                  child: const Icon(
                    Icons.close_rounded,
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Palatt.boxShadow,
            thickness: 1.5,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: [
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Popularity",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Popularity",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Experience : High to Low",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Experience : Low to High",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Total orders : High to Low",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Total orders : Low to High",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Price : High to Low",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Price : Low to High",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                ListTile(
                  dense: true,
                  leading: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1,
                          color: Palatt.primary,
                        )),
                    child: const CircleAvatar(
                      backgroundColor: Palatt.primary,
                    ),
                  ),
                  title: const Text(
                    "Rating : Low to High",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Palatt.boxShadow,
            thickness: 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RRButton(
                onTap: () {},
                data: "Clear All",
                padding: const EdgeInsets.symmetric(horizontal: 15),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Palatt.black,
                ),
              ),
              RRButton(
                onTap: () {},
                data: "Apply",
                radius: 10,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                backgroundColor: Palatt.primary,
                height: 43,
                width: 173,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Palatt.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}