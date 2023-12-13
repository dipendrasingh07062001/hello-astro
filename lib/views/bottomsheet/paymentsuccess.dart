import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/utils/imageslink.dart';

import '../../theme/colorpalatt.dart';
import '../../widgets/space.dart';

class PaymentSuccessfull extends StatelessWidget {
  const PaymentSuccessfull({super.key});

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
                  "Payment Sucessfull",
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
          spaceVertical(10),
          Center(
            child: SvgPicture.asset(
              AppImages.successfull,
              width: Get.width,
              height: 150,
            ),
          ),
          spaceVertical(20),
        ],
      ),
    );
  }
}
