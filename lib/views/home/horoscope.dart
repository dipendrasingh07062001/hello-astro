import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/widgets/cards.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/space.dart';
import 'package:intl/intl.dart';
import '../../models/sunshins.dart';

class Horoscope extends StatelessWidget {
  const Horoscope({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Horoscope"),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          gradient: Palatt.horogradiant,
        ),
        child: Column(
          children: [
            // const Text(
            //   "Horoscope",
            //   style: TextStyle(
            //     fontSize: 28,
            //     fontWeight: FontWeight.w600,
            //   ),
            // ),
            Row(
              children: [
                spaceHorizontal(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "26",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Palatt.primary,
                      ),
                    ),
                    Text(
                      DateFormat("MMM, yyyy\nEEEE").format(DateTime.now()),
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  AppImages.cloudysun,
                  height: 128,
                ),
                spaceHorizontal(15),
              ],
            ),
            spaceVertical(30),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Palatt.white,
                    border: Border.all(color: Palatt.primary),
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(70))),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(15),
                  crossAxisSpacing: 20,
                  childAspectRatio: 1,
                  children: SunshineData.sunshines
                      .map(
                        (e) => HoroCard(
                          height: 100,
                          width: 100,
                          onTap: () {},
                          image: e.image,
                          title: e.name,
                          date: "20 Apr - 20 May",
                        ),
                        // Container(
                        //       padding: const EdgeInsets.all(5),
                        //       child: Column(
                        //         children: [
                        //           Container(
                        //             height: 100,
                        //             width: 100,
                        //             decoration: BoxDecoration(
                        //               shape: BoxShape.circle,
                        //               image: DecorationImage(
                        //                 image: AssetImage(e.image),
                        //                 // colorFilter: const ColorFilter.mode(
                        //                 //   Palatt.yellow,
                        //                 //   BlendMode.hardLight,
                        //                 // ),
                        //               ),
                        //             ),
                        //           ),
                        //           Text(
                        //             e.name,
                        //             style: const TextStyle(
                        //               fontSize: 12,
                        //               fontWeight: FontWeight.w600,
                        //               height: 2,
                        //             ),
                        //           )
                        //         ],
                        //       ),
                        //     )
                      )
                      .toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
