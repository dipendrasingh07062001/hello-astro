import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/horroscope/prediction.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/loader.dart';
import 'package:hello_astro_user/widgets/space.dart';
import 'package:intl/intl.dart';

class PredictionView extends GetView<PredictionController> {
  const PredictionView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.onInit();
    return Scaffold(
      appBar: const CustomAppBar(
        title: Words.Prediction,
      ),
      body: Obx(() => controller.isloading.value
          ? loader
          : ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              children: [
                Row(
                  children: [
                    Expanded(
                      child: PopupMenuButton(
                        itemBuilder: (_) => List<PopupMenuItem>.from(
                            List.generate(
                                controller.category.length,
                                (index) => PopupMenuItem(
                                    onTap: () {
                                      controller.selectedcategory.value =
                                          controller.category[index];
                                      controller.getPredition();
                                    },
                                    child: Text(
                                        controller.category[index]["name"])))),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          alignment: Alignment.center,
                          child: Text(controller.selectedcategory["name"] ??
                              "--Select category--"),
                        ),
                      ),
                    ),
                    spaceHorizontal(10),
                    Expanded(
                      child: PopupMenuButton(
                        itemBuilder: (_) => List<PopupMenuItem>.from(
                            List.generate(
                                controller.language.length,
                                (index) => PopupMenuItem(
                                    onTap: () {
                                      controller.selectedLanguage.value =
                                          controller.language[index];
                                      controller.getPredition();
                                    },
                                    child: Text(
                                        controller.language[index]["name"])))),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          alignment: Alignment.center,
                          child: Text(controller.selectedLanguage["name"] ??
                              "--Select language--"),
                        ),
                      ),
                    ),
                  ],
                ),
                spaceVertical(10),
                Visibility(
                  visible: controller.selectedcategory["key"] == "weekly-sun" ||
                      controller.selectedcategory["key"] == "weekly-moon",
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Week",
                        style: googleFontstyle(const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                      ),
                      Row(
                        children: [
                          Text("thisweek",
                              style: googleFontstyle(const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400))),
                          Radio<String>(
                              value: "thisweek",
                              groupValue: controller.selectedweek.value,
                              onChanged: (value) {
                                controller.selectedweek.value = value!;
                                controller.getPredition();
                              }),
                          Text("nextweek",
                              style: googleFontstyle(const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400))),
                          Radio<String>(
                            value: "nextweek",
                            groupValue: controller.selectedweek.value,
                            onChanged: (value) {
                              controller.selectedweek.value = value!;
                              controller.getPredition();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Visibility(
                    visible: controller.selectedcategory["key"] == "yearly",
                    child: Row(
                      children: [
                        Text("Year",
                            style: googleFontstyle(const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400))),
                        spaceHorizontal(10),
                        Expanded(
                            child: TextFormField(
                          controller: controller.yearController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          // cursorHeight: 20,
                          onChanged: (value) {
                            if (value.length == 4) {
                              controller.getPredition();
                            }
                          },
                          decoration: InputDecoration(
                            isCollapsed: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Palatt.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Palatt.black, width: 1)),
                            // suffixIcon: Row(
                            //   mainAxisSize: MainAxisSize.min,
                            //   children: [
                            //     GestureDetector(
                            //       onTap: () {
                            //         if (controller
                            //             .yearController.text.isEmpty) {
                            //           controller.yearController.text = "0";
                            //           return;
                            //         }
                            //         controller.yearController.text =
                            //             (int.parse(controller
                            //                         .yearController.text) +
                            //                     1)
                            //                 .toString();
                            //       },
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //             borderRadius:
                            //                 BorderRadius.circular(5),
                            //             border: Border.all(
                            //                 color: Palatt.primary, width: 1)),
                            //         child: const Icon(Icons.add,
                            //             color: Palatt.black),
                            //       ),
                            //     ),
                            //     spaceHorizontal(10),
                            //     GestureDetector(
                            //       onTap: () {
                            //         if (controller
                            //             .yearController.text.isEmpty) {
                            //           controller.yearController.text = "0";
                            //           return;
                            //         }
                            //         if (controller.yearController.text ==
                            //             "0") {
                            //           return;
                            //         }
                            //         controller.yearController.text =
                            //             (int.parse(controller
                            //                         .yearController.text) -
                            //                     1)
                            //                 .toString();
                            //       },
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //             borderRadius:
                            //                 BorderRadius.circular(5),
                            //             border: Border.all(
                            //                 color: Palatt.primary, width: 1)),
                            //         child: const Icon(Icons.remove,
                            //             color: Palatt.black),
                            //       ),
                            //     ),
                            //     spaceHorizontal(10),
                            //   ],
                            // )
                          ),
                        ))
                      ],
                    )),
                spaceVertical(10),
                // Visibility(
                //     child: GestureDetector(
                //   onTap: () async {
                //     await showDatePicker(
                //             context: context,
                //             initialDate: DateTime.now(),
                //             firstDate: DateTime(1900),
                //             lastDate: DateTime.now())
                //         .then((value) {
                //       if (value != null) {
                //         controller.dob.value =
                //             DateFormat("dd/MM/yyyy").format(value);
                //       }
                //     });
                //   },
                //   child: Container(
                //     width: Get.width,
                //     height: 40,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10),
                //         border: Border.all(color: Palatt.black, width: 1)),
                //     child: Row(
                //       children: [
                //         spaceHorizontal(10),
                //         Text(
                //           controller.dob.value.isEmpty
                //               ? "dd/MM/yyyy"
                //               : controller.dob.value,
                //           style: googleFontstyle(const TextStyle(
                //               fontSize: 14, fontWeight: FontWeight.w400)),
                //         ),
                //         const Spacer(),
                //         const Icon(Icons.calendar_month),
                //         spaceHorizontal(10),
                //       ],
                //     ),
                //   ),
                // ))
              ],
            )),
    );
  }
}
