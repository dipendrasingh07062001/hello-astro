import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../theme/colorpalatt.dart';
import '../../utils/imageslink.dart';
import '../../widgets/cards.dart';

class FreeServices extends StatelessWidget {
  const FreeServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AppImages.wave,
          // height: 40,
          width: Get.width,
          color: Palatt.offwhite,
        ),
        Container(
          width: Get.width,
          decoration: const BoxDecoration(
            color: Palatt.offwhite,
          ),
          child: Column(
            children: [
              const Text(
                "Free Services",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Wrap(
                  children: [
                    FSCard(
                      // height: 50,
                      width: Get.width / 2.5,
                      margin: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05, vertical: 10),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              AppImages.kundli,
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                        const Text(
                          "Kundli",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    FSCard(
                      margin: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05, vertical: 10),
                      width: Get.width / 2.5,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              AppImages.horoscope,
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                        const Text(
                          "Horoscope",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    FSCard(
                      width: Get.width / 2.5,
                      margin: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05, vertical: 10),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              AppImages.kundlimaching,
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                        const Text(
                          "Matchmaking",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    FSCard(
                      margin: EdgeInsets.symmetric(
                          horizontal: Get.width * 0.05, vertical: 10),
                      width: Get.width / 2.5,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              AppImages.panchang,
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ),
                        const Text(
                          "Panchang",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        RotatedBox(
          quarterTurns: 2,
          child: SvgPicture.asset(
            AppImages.wave,
            width: Get.width,
            // height: 45,
            color: Palatt.offwhite,
          ),
        )
      ],
    );
  }
}
