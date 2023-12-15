import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/widgets/space.dart';

import '../../controllers/orders/myorderscontroller.dart';
import '../../services/audio/audioservice.dart';
import '../../utils/buttons.dart';
import '../../utils/enums.dart';
import '../../widgets/custom_appbar.dart';

class MyOrders extends GetView<MyOrdersController> {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palatt.white,
      appBar: const CustomAppBar(
        title: "My Orders",
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          initialIndex: controller.currentIndex.value,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              spaceVertical(15),
              Obx(
                () => Container(
                  decoration: BoxDecoration(color: Palatt.white, boxShadow: [
                    BoxShadow(
                      color: Palatt.boxShadow.withOpacity(0.5),
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]),
                  child: TabBar(
                      indicatorPadding: const EdgeInsets.symmetric(
                          // horizontal: 15,
                          ),
                      indicatorColor: Palatt.primary,
                      onTap: controller.onTapTab,
                      indicatorWeight: 2.0,
                      indicatorSize: TabBarIndicatorSize.label,

                      // isScrollable: true,
                      padding: EdgeInsets.zero,
                      tabs: [
                        Text(
                          "  All  ",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: controller.currentIndex.value == 0
                                ? FontWeight.w500
                                : FontWeight.w300,
                            color: controller.currentIndex.value == 0
                                ? Palatt.black
                                : Palatt.grey,
                          ),
                        ),
                        Text(
                          "  Onging  ",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: controller.currentIndex.value == 1
                                ? FontWeight.w500
                                : FontWeight.w300,
                            color: controller.currentIndex.value == 1
                                ? Palatt.black
                                : Palatt.grey,
                          ),
                        ),
                        Text(
                          "  Completed  ",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: controller.currentIndex.value == 2
                                ? FontWeight.w500
                                : FontWeight.w300,
                            color: controller.currentIndex.value == 2
                                ? Palatt.black
                                : Palatt.grey,
                          ),
                        )
                      ]),
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [barView(), barView(), barView()],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget barView() => ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return OrderCard(
          mode: (index % 2) == 0 ? ContactMode.call : ContactMode.chat,
        );
      });
}

class OrderCard extends StatelessWidget {
  final ContactMode mode;
  const OrderCard({super.key, required this.mode});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Palatt.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              color: Palatt.boxShadow,
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    "Completed",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  ),
                ),
                const Text(
                  "ID: 62E2AA4565461726F645",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Palatt.grey,
                  ),
                ),
                spaceHorizontal(10),
                SvgPicture.asset(
                  mode == ContactMode.call
                      ? AppImages.callicon
                      : AppImages.chaticon,
                  height: 12.15,
                  width: 12.15,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
              color: Palatt.yellow2nd,
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Palatt.tanborder,
                  radius: 17,
                  child: CircleAvatar(
                    radius: 16.5,
                    backgroundColor: Palatt.white,
                    backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/OIP.1OWya33KYuHVYGM0L0JcYAHaEn?w=290&h=181&c=7&r=0&o=5&dpr=1.8&pid=1.7",
                    ),
                  ),
                ),
                spaceHorizontal(8),
                const Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Astro Swami G",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    ),
                    Text(
                      "Online. Ready for consultation",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Palatt.black,
                      ),
                    ),
                  ],
                )),
                RRButton(
                  height: 31,
                  width: 85,
                  radius: 4,
                  backgroundColor: Palatt.primary,
                  data: "Consult",
                  style: const TextStyle(fontSize: 16, color: Palatt.white),
                  onTap: () {},
                ),
              ],
            ),
          ),
          spaceVertical(5),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Time",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Palatt.grey,
                  ),
                ),
                Text(
                  "2:10 PM 01/08/2022",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Palatt.grey,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Duration",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Palatt.grey,
                  ),
                ),
                Text(
                  "5 mins",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Palatt.grey,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Charge",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Palatt.grey,
                  ),
                ),
                Text(
                  "₹90",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Palatt.grey,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Palatt.grey,
            indent: 10,
            endIndent: 10,
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Charge",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Palatt.black,
                  ),
                ),
                Text(
                  "₹90",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Palatt.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RRButton(
                  height: 31,
                  radius: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  backgroundColor: Palatt.white,
                  borderColor: Palatt.black,
                  data: "Have doubts?",
                  style: const TextStyle(fontSize: 16, color: Palatt.black),
                  onTap: () {},
                ),
                spaceHorizontal(10),
                RRButton(
                  height: 31,
                  radius: 4,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  backgroundColor: Palatt.white,
                  borderColor: Palatt.black,
                  data: "Review",
                  style: const TextStyle(fontSize: 16, color: Palatt.black),
                  onTap: () {},
                ),
              ],
            ),
          ),
          mode == ContactMode.call
              ? const AudioWidget()
              : RRButton(
                  height: 40,
                  width: Get.width,
                  margin: const EdgeInsets.all(10),
                  backgroundColor: Palatt.primary,
                  radius: 6,
                  onTap: () {},
                  data: "Chat Review",
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Palatt.white),
                )
        ],
      ),
    );
  }
}
