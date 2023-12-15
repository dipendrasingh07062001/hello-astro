// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/utils/buttons.dart';
import 'package:hello_astro_user/widgets/space.dart';

class FilterSheet extends GetView {
  const FilterSheet({super.key});
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
                Text("Filters",
                    style: googleFontstyle(
                      TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    )),
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
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              children: [
                spaceVertical(10),
                Text("Language",
                    style: googleFontstyle(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    )),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 16,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1.8,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  children: List.generate(9, (index) {
                    return RRButton2(
                      onTap: () {},
                      radius: 8,
                      borderColor: Palatt.greyshade2,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "English",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Palatt.greyshade2,
                            ),
                          ),
                          Text(
                            "English",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Palatt.greyshade2,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                spaceVertical(10),
                Text("Skill",
                    style: googleFontstyle(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    )),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.8,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  children: List.generate(6, (index) {
                    return RRButton(
                      onTap: () {},
                      data: "Love",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Palatt.greyshade2,
                      ),
                      radius: 8,
                      borderColor: Palatt.greyshade2,
                    );
                  }),
                ),
                spaceVertical(10),
                Text("Experience",
                    style: googleFontstyle(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    )),
                CustomSlider(
                  min: 0,
                  max: 20,
                  value: 10,
                  onUpdate: (p0) {
                    return p0;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("0",
                        style: googleFontstyle(
                          TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Palatt.black,
                          ),
                        )),
                    Text("20",
                        style: googleFontstyle(
                          TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Palatt.black,
                          ),
                        )),
                  ],
                ),
                Text("Price",
                    style: googleFontstyle(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    )),
                Text("₹8~₹99",
                    style: googleFontstyle(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    )),
                CustomSlider(
                  min: 0,
                  max: 20,
                  value: 10,
                  onUpdate: (p0) {
                    return p0;
                  },
                ),
                spaceVertical(15),
                Text("Speciality",
                    style: googleFontstyle(
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Palatt.black,
                      ),
                    )),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.8,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  children: List.generate(12, (index) {
                    return RRButton(
                      onTap: () {},
                      data: "Vedic astrology",
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Palatt.greyshade2,
                      ),
                      radius: 8,
                      borderColor: Palatt.greyshade2,
                    );
                  }),
                ),
              ],
            ),
          ),
          const Divider(
            color: Palatt.boxShadow,
            thickness: 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RRButton(
                  onTap: () {},
                  data: "Clear All",
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  style: googleFontstyle(
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                    ),
                  )),
              RRButton(
                  onTap: () {},
                  data: "Apply",
                  radius: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  backgroundColor: Palatt.primary,
                  height: 43,
                  width: 173,
                  style: googleFontstyle(
                    const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Palatt.white,
                    ),
                  )),
            ],
          ),
          spaceVertical(10)
        ],
      ),
    );
  }
}

class CustomSlider extends StatefulWidget {
  final double Function(double) onUpdate;
  int min, max, value;

  CustomSlider({
    super.key,
    required this.onUpdate,
    required this.min,
    required this.max,
    required this.value,
  });

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double value = 0;
  @override
  void initState() {
    super.initState();
    checkvalue();
  }

  checkvalue() {
    final part = Get.width / widget.max;
    //  if(widget.value)
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              value = widget.onUpdate(details.localPosition.dx);
            });
          },
          onTapUp: (details) {
            setState(() {
              value = widget.onUpdate(details.localPosition.dx);
            });
          },
          child: SizedBox(
            width: Get.width,
            height: 20,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: Get.width,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Palatt.boxShadow,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: value,
                    height: 10,
                    constraints: const BoxConstraints(minWidth: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Palatt.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
