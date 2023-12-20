import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/space.dart';

class HelpNSupport extends GetView {
  const HelpNSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Help & Support",
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                AppImages.background2,
              ))),
              child: ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                children: [chatcard(), chatcard(), chatcard(), chatcard()],
              ),
            ),
          ),
          typemessage(),
        ],
      ),
    );
  }

  Widget typemessage() => Container(
        width: Get.width,
        constraints: const BoxConstraints(minHeight: 80),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 18,
        ),
        decoration: const BoxDecoration(
            color: Palatt.white,
            boxShadow: [BoxShadow(color: Palatt.boxShadow, blurRadius: 4)]),
        child: Row(
          children: [
            Expanded(
                child: TextFormField(
              cursorColor: Palatt.primary,
              cursorWidth: 1,
              cursorHeight: 15,
              maxLines: 5,
              minLines: 1,
              style: const TextStyle(
                  fontSize: 13, color: Palatt.black, height: 1.5),
              decoration: InputDecoration(
                  isDense: true,
                  isCollapsed: true,
                  filled: true,
                  fillColor: Palatt.white,
                  hintText: "Type a message",
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                  hintStyle: const TextStyle(
                      color: Palatt.grey, fontSize: 13, height: 1),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Palatt.grey,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                        color: Palatt.primary,
                      )),
                  focusColor: Palatt.primary,
                  suffixIcon: GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        AppImages.attachment,
                        height: 10,
                        width: 10,
                      ),
                    ),
                  )),
            )),
            spaceHorizontal(10),
            SvgPicture.asset(
              AppImages.send,
              height: 50,
              width: 50,
            ),
          ],
        ),
      );

  Widget chatcard() => Align(
        alignment: Alignment.centerRight,
        child: Container(
          constraints: BoxConstraints(maxWidth: Get.width * 0.6),
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Palatt.blueshadelight,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Namaste....",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Palatt.black,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "06:30 PM",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Palatt.greyshade1,
                    ),
                  ),
                  spaceHorizontal(10),
                  SvgPicture.asset(
                    AppImages.check,
                    height: 18,
                    width: 18,
                    color: Palatt.greyshade1,
                  )
                ],
              ),
            ],
          ),
        ),
      );
}
