import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/views/bottomsheet/paymentsuccess.dart';

import '../../theme/colorpalatt.dart';
import '../../utils/buttons.dart';
import '../../widgets/space.dart';

class PaymentDetail extends StatelessWidget {
  const PaymentDetail({super.key});

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
                  "Payment Detail",
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
          ListTile(
            dense: true,
            leading: const Text(
              "Subtotal",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Palatt.black,
              ),
            ),
            trailing: const Text(
              "₹200",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Palatt.black,
              ),
            ),
          ),
          ListTile(
            dense: true,
            leading: const Text(
              "GST @ 18%",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Palatt.black,
              ),
            ),
            trailing: const Text(
              "₹36",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Palatt.black,
              ),
            ),
          ),
          ListTile(
            dense: true,
            leading: const Text(
              "Total",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Palatt.black,
              ),
            ),
            trailing: const Text(
              "₹236",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Palatt.black,
              ),
            ),
          ),
          const Divider(
            color: Palatt.boxShadow,
            thickness: 1.5,
          ),
          RRButton(
            onTap: () {
              Get.close(0);
              Get.bottomSheet(
                PaymentSuccessfull(),
              );
            },
            data: "Proceed to Pay",
            radius: 10,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            backgroundColor: Palatt.primary,
            height: 43,
            width: Get.width,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Palatt.white,
            ),
          )
        ],
      ),
    );
  }
}
