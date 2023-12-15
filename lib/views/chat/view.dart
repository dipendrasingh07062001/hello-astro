import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/buttons.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/widgets/space.dart';

class ChatScreen extends GetView {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 75,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 27,
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D",
              ),
            ),
            spaceHorizontal(14),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Harry John",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                      height: 1.2),
                ),
                Text(
                  "(3:51 mins)",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Palatt.primary,
                      height: 1.2),
                ),
                Text(
                  "Chat in-Progress",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Palatt.black,
                      height: 1.2),
                )
              ],
            )
          ],
        ),
        actions: [
          RRButton2(
              onTap: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppImages.refresh,
                    height: 14,
                    width: 17,
                  ),
                  spaceHorizontal(10),
                  const Text(
                    "End",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Palatt.black,
                    ),
                  )
                ],
              )),
          spaceHorizontal(15)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              // shrinkWrap: true,
              // padding: const EdgeInsets.symmetric(horizontal: 15),
              reverse: true,

              children: [
                chatcard(
                  alignment: Alignment.centerLeft,
                  backgroundColor: Palatt.blueshadelight,
                  msg:
                      "Welcome to Hello Astrologer. Consultant will take a minute to prepare your chart. You may ask your question in the meanwhile",
                ),
                chatcard(
                  msg:
                      "Hi Udayy,\nBelow are my details : \nName : Rajesh Kumar \nGender : Male \nDOB : 28-Feb-1996 \nTOB : 2:30 PM \nPOB : Homnabad, Karnataka, India \nMarital Status : Single \nOccupation : Private Sector \nProblem Area : Career and Business \nQuestion : undefined \nQuestion : undefined",
                ),
              ],
            ),
          ),
          typemessage()
        ],
      ),
    );
  }

  Widget typemessage() => Container(
        width: Get.width,
        // height: 80,
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
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintStyle: const TextStyle(
                      color: Palatt.grey, fontSize: 13, height: 2),
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
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 12, left: 12),
                          child: SvgPicture.asset(
                            AppImages.attachment,
                            height: 20,
                            width: 20,
                            color: Palatt.grey,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: const Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Icon(
                            Icons.camera_alt,
                            color: Palatt.grey,
                            size: 25,
                            // height: 10,
                            // width: 10,
                          ),
                        ),
                      ),
                    ],
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

  Widget chatcard({
    AlignmentGeometry alignment = Alignment.centerRight,
    String msg = "",
    Color backgroundColor = Palatt.lightyellow,
  }) =>
      Align(
        alignment: alignment,
        child: Container(
          constraints: BoxConstraints(maxWidth: Get.width * 0.65),
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(10),
              bottomRight: const Radius.circular(10),
              topLeft: alignment == Alignment.centerLeft
                  ? Radius.zero
                  : const Radius.circular(10),
              topRight: alignment == Alignment.centerRight
                  ? Radius.zero
                  : const Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                msg,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Palatt.black,
                ),
              ),
              // Row(
              //   mainAxisSize: MainAxisSize.min,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Text(
              //       "06:30 PM",
              //       style: TextStyle(
              //         fontSize: 13,
              //         fontWeight: FontWeight.w400,
              //         color: Palatt.greyshade1,
              //       ),
              //     ),
              //     spaceHorizontal(10),
              //     SvgPicture.asset(
              //       AppImages.check,
              //       height: 18,
              //       width: 18,
              //       color: Palatt.greyshade1,
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      );
}
