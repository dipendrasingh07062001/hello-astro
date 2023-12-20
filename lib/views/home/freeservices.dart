import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Free Services",
              style: TextStyle(
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
                      text: "Kundli",
                    ),

                    // FSCard(
                    //   margin: const EdgeInsets.only(right: 10),
                    //   image: AppImages.horoscope,
                    //   text: "Horoscope",
                    // ),
                    FSCard(
                      margin: const EdgeInsets.only(right: 10),
                      image: AppImages.kundlimaching,
                      text: "Matchmaking",
                    ),
                    FSCard(
                      margin: const EdgeInsets.only(right: 10),
                      image: AppImages.panchang,
                      text: "Panchang",
                    ),
                    FSCard(
                      margin: const EdgeInsets.only(right: 10),
                      image: AppImages.directory,
                      text: "Directory",
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
