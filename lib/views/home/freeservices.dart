import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import '../../theme/colorpalatt.dart';
import '../../utils/imageslink.dart';
import '../../widgets/cards.dart';

class FreeServices extends StatelessWidget {
  const FreeServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Palatt.greybackground,
      ),
      height: 126,
      padding: EdgeInsets.symmetric(horizontal: Get.width * .040, vertical: 0),
      child: Column(
        children: [
          const SizedBox(
            height: 14,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              Words.FreeServices.tr,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              width: Get.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FSCard(
                      margin: const EdgeInsets.only(right: 10),
                      image: AppImages.kundli,
                      text: Words.Kundli.tr,
                    ),

                    // FSCard(
                    //   margin: const EdgeInsets.only(right: 10),
                    //   image: AppImages.horoscope,
                    //   text: "Horoscope",
                    // ),
                    FSCard(
                      margin: const EdgeInsets.only(right: 10),
                      image: AppImages.kundlimaching,
                      text: Words.Matchmaking.tr,
                    ),
                    FSCard(
                      margin: const EdgeInsets.only(right: 10),
                      image: AppImages.panchang,
                      text: Words.Panchang.tr,
                    ),
                    FSCard(
                      margin: const EdgeInsets.only(right: 10),
                      image: AppImages.directory,
                      text: Words.Directory.tr,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
