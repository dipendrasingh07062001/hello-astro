import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colorpalatt.dart';

Widget registerbutton = Container(
  height: 30,
  width: Get.width,
  color: Palatt.boxShadow,
  alignment: Alignment.centerLeft,
  padding: const EdgeInsets.only(left: 15),
  child: const Text(
    "Register yourself in Hello Astrologer Directory",
    style: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: Palatt.black,
    ),
  ),
);
