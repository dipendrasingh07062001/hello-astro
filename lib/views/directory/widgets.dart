import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/themedata.dart';

import '../../theme/colorpalatt.dart';

Widget registerbutton() => Container(
      height: 30,
      width: Get.width,
      color: Palatt.boxShadow.withOpacity(0.5),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          Text("Register yourself in Hello Astrologer Directory",
              style: googleFontstyle(
                const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Palatt.black,
                ),
              )),
          const Spacer(),
          Text("Click here",
              style: googleFontstyle(
                const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Palatt.primary,
                    decoration: TextDecoration.underline),
              )),
        ],
      ),
    );
