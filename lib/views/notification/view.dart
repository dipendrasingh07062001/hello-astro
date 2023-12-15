import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/colorpalatt.dart';
import '../../theme/themedata.dart';
import '../../utils/buttons.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/space.dart';

class NotificationView extends GetView {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    Widget notificationcard = RRButton2(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      borderColor: Palatt.primary,
      radius: 8,
      margin: const EdgeInsets.only(bottom: 12),
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 27.5,
          ),
          spaceHorizontal(10),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Harry John",
                  style: googleFontstyle(
                    const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                  style: googleFontstyle(
                    const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Palatt.grey,
                    ),
                  )),
            ],
          ))
        ],
      ),
    );
    return Scaffold(
      appBar: CustomAppBar(
        title: "Notification",
      ),
      body: ListView.builder(
          itemCount: 10,
          padding: const EdgeInsets.all(15),
          itemBuilder: (context, index) {
            return notificationcard;
          }),
    );
  }
}
