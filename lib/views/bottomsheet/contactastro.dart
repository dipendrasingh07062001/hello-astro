import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/utils/buttons.dart';

import '../../theme/colorpalatt.dart';
import '../../widgets/space.dart';

class ContactAstro extends StatelessWidget {
  const ContactAstro({super.key});

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
                    "Get Contact",
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
            spaceVertical(15),
            Row(
              children: [
                spaceHorizontal(15),
                Expanded(
                  flex: 3,
                  child: RRButton(
                    onTap: () {},
                    height: 44,
                    radius: 6,
                    data: "+91 7890123456",
                    backgroundColor: Palatt.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 4, color: Palatt.boxShadow)
                    ],
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Palatt.black,
                    ),
                  ),
                ),
                spaceHorizontal(15),
                Expanded(
                  flex: 1,
                  child: RRButton(
                    onTap: () {},
                    height: 44,
                    radius: 6,
                    data: "Call",
                    backgroundColor: Palatt.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Palatt.white,
                    ),
                  ),
                ),
                spaceHorizontal(15),
              ],
            ),
            spaceVertical(15),
            Row(
              children: [
                spaceHorizontal(15),
                Expanded(
                  flex: 3,
                  child: RRButton(
                    onTap: () {},
                    height: 44,
                    radius: 6,
                    data: "astrologer@gmail.com",
                    backgroundColor: Palatt.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 4, color: Palatt.boxShadow)
                    ],
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Palatt.black,
                    ),
                  ),
                ),
                spaceHorizontal(15),
                Expanded(
                  flex: 1,
                  child: RRButton(
                    onTap: () {},
                    height: 44,
                    radius: 6,
                    data: "Mail",
                    backgroundColor: Palatt.primary,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Palatt.white,
                    ),
                  ),
                ),
                spaceHorizontal(15),
              ],
            ),
            spaceVertical(15),
          ]),
    );
  }
}
