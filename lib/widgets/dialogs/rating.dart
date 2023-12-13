import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../theme/colorpalatt.dart';
import '../space.dart';

class RatingDialog extends StatelessWidget {
  const RatingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: Container(
        width: Get.width,
        // margin: const EdgeInsets.symmetric(horizontal: 45),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  spaceVertical(15),
                  const Text(
                    "Rating",
                    style: TextStyle(
                      fontSize: 17,
                      color: Palatt.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    itemPadding: EdgeInsets.only(right: 8.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Palatt.primary,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const Text(
                    "Comments",
                    style: TextStyle(
                      fontSize: 17,
                      color: Palatt.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 17,
                      color: Palatt.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    minLines: 2,
                    maxLines: 5,
                    cursorColor: Palatt.primary,
                    cursorWidth: 1,
                    cursorHeight: 20,
                    decoration: InputDecoration(
                      hintText: "Massage",
                      hintStyle: TextStyle(
                        fontSize: 17,
                        color: Palatt.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1, color: Palatt.primary),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 1, color: Palatt.primary),
                      ),
                    ),
                  )
                ],
              ),
            ),
            spaceVertical(15),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => Get.close(0),
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Palatt.primary,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(8)),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 15,
                          color: Palatt.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                spaceHorizontal(1),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Palatt.primary,
                        borderRadius:
                            BorderRadius.only(bottomRight: Radius.circular(8)),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Rate Now",
                        style: TextStyle(
                          fontSize: 15,
                          color: Palatt.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
