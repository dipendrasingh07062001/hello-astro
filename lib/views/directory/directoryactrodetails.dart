import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/views/bottomsheet/contactastro.dart';
import 'package:hello_astro_user/views/directory/widgets.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:intl/intl.dart';

import '../../routes/app_pages.dart';
import '../../theme/colorpalatt.dart';
import '../../theme/themedata.dart';
import '../../utils/buttons.dart';
import '../../widgets/space.dart';
import '../astroprofile/astroview.dart';

class DirectoryAstroDetails extends GetView {
  @override
  Widget build(BuildContext context) {
    List langList = ["Hindi", "English", "Tamil"];
    Widget astrodetails = Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Palatt.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Palatt.yellow2nd),
          boxShadow: const [
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 3,
              color: Palatt.greybackground,
            )
          ]),
      width: Get.width,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          SizedBox(
            width: 99,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 33,
                  backgroundColor: Palatt.primary,
                  child: CircleAvatar(
                    radius: 32.5,
                    backgroundColor: Palatt.white,
                    child: CircleAvatar(
                      radius: 31.5,
                      backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                      ),
                    ),
                  ),
                ),
                spaceVertical(10),
                Container(
                  width: 66,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Palatt.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(color: Palatt.boxShadow, blurRadius: 3)
                      ]),
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        5,
                        (index) => const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1),
                              child: Icon(
                                Icons.star,
                                size: 10,
                                color: Palatt.primary,
                              ),
                            )),
                  ),
                ),
                spaceVertical(5),
                const Text(
                  "View - 70000",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          spaceHorizontal(10),
          const Expanded(
            flex: 3,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name : ",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Palatt.black,
                          ),
                        ),
                        Text(
                          "Zoha Merchant",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Palatt.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Expertise : ",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Palatt.black,
                          ),
                        ),
                        Text(
                          "Tarot, Psychic",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Palatt.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Consltancy Charge : ",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Palatt.black,
                          ),
                        ),
                        Text(
                          "20/min INR",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Palatt.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Language : ",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Palatt.black,
                          ),
                        ),
                        Text(
                          "English, Hindi",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Palatt.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Years of experience : ",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Palatt.black,
                          ),
                        ),
                        Text(
                          "22 Years",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Palatt.black,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Location : ",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Palatt.black,
                          ),
                        ),
                        Text(
                          "Jaipur, Rajasthan",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Palatt.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: Palatt.primaryLight,
                    child: Icon(
                      Icons.favorite_border,
                      color: Palatt.primary,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    Widget availabilityTime = Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      decoration: BoxDecoration(
          color: Palatt.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Palatt.boxShadow,
              blurRadius: 4,
            )
          ]),
      child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 0,
          ),
          childrenPadding: EdgeInsets.zero,
          title: const Text(
            "Availability Day/Timing",
            style: TextStyle(
              fontSize: 16,
              color: Palatt.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          iconColor: Palatt.primary,
          collapsedIconColor: Palatt.primary,
          children: [
            const Divider(color: Palatt.boxShadow, thickness: 1),
            Container(
              height: 30,
              alignment: Alignment.centerLeft,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   astroPrfileController.selectedavailability =
                      //       astroPrfileController
                      //           .astrologer.availabilityTiming![index];
                      // });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      width: 67,
                      height: 27,
                      decoration: const BoxDecoration(
                        color: Palatt.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        DateFormat("dd MMM")
                            .format(DateTime.now().add(Duration(days: index))),
                        style: const TextStyle(
                            fontSize: 16,
                            color: Palatt.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(color: Palatt.boxShadow, thickness: 1),
            GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              childAspectRatio: 4,
              shrinkWrap: true,
              mainAxisSpacing: 12,
              crossAxisSpacing: 15,
              children: List.generate(
                6,
                (index) => timingSlot(
                  "${DateFormat().add_jm().format(DateTime.now().add(Duration(hours: index)))} - ${DateFormat().add_jm().format(DateTime.now())}",
                  //     onTap: () {
                  //   setState(() {
                  //     astroPrfileController.whichtime =
                  //         astroPrfileController
                  //             .selectedavailability
                  //             .timing[index];
                  //   });
                  // },
                ),
              ),
            ),
          ]),
    );
    Widget survecard = Container(
      height: 60,
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Palatt.primary.withOpacity(0.5),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.thumb_up,
            color: Palatt.primary,
          ),
          spaceHorizontal(5),
          const Text(
            "98%",
            style: TextStyle(
              fontSize: 19,
              color: Palatt.black,
              fontWeight: FontWeight.w500,
              height: 2,
            ),
          ),
          spaceHorizontal(8),
          const VerticalDivider(
            width: 2,
            thickness: 2,
            color: Palatt.primary,
            endIndent: 10,
            indent: 10,
          ),
          spaceHorizontal(8),
          const Expanded(
            child: Text(
              "Out of all users who were surveyed. 98% of them are satisfied with Astro Ssachin S's prediction.",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                color: Palatt.black,
                fontWeight: FontWeight.w300,
                height: 1,
              ),
            ),
          ),
        ],
      ),
    );
    Widget bio = Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
              children: List.generate(
                  langList.length,
                  (index) => Container(
                        constraints: const BoxConstraints(minWidth: 70),
                        height: 26,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: 1,
                          color:
                              index == 0 ? Palatt.primary : Palatt.transparent,
                        ))),
                        alignment: Alignment.center,
                        child: Text(langList[index],
                            style: googleFontstyle(
                              TextStyle(
                                fontSize: 16,
                                color:
                                    index == 0 ? Palatt.primary : Palatt.black,
                                fontWeight: FontWeight.w500,
                                height: 1,
                              ),
                            )),
                      ))),
          spaceVertical(20),
          const Text(
            """We live in an era where we are digitalized to the level, everything of our need is available at the tip of our hands like health, food, clothing, etc.
We live in an era where we are digitalized to the level, everything of our need is available at the tip of our hands like health, food, clothing, etc.
We live in an era where we are digitalized to the level, everything of our need is available at the tip of our hands like health, food, clothing, etc.""",
            style: TextStyle(
              fontSize: 15,
              color: Palatt.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
    Widget gallery = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            "Gallery",
            style: googleFontstyle(const TextStyle(
              fontSize: 18,
              color: Palatt.black,
              fontWeight: FontWeight.w500,
            )),
          ),
        ),
        spaceVertical(11),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
            itemBuilder: (context, index) {
              return Container(
                height: 96,
                width: 96,
                margin: index == 10 ? null : const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4HIIl8vm4izK8M9wIAz5C_rGfJzA1noXe6A&usqp=CAU",
                      ),
                      fit: BoxFit.cover,
                    )),
              );
            },
          ),
        ),
        spaceVertical(20)
      ],
    );
    Widget review = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text("Reviews",
              style: googleFontstyle(
                const TextStyle(
                  fontSize: 18,
                  color: Palatt.black,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ),
        spaceVertical(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 30,
                  itemPadding: const EdgeInsets.only(right: 8.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Palatt.primary,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                const Text(
                  "Based on 900 Reviews",
                  style: TextStyle(
                    fontSize: 15,
                    color: Palatt.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Text("4.58",
                style: googleFontstyle(
                  const TextStyle(
                    fontSize: 26,
                    color: Palatt.black,
                    fontWeight: FontWeight.w500,
                  ),
                )),
            // spaceHorizontal(25),
          ],
        ),
        spaceVertical(10),
        ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    isThreeLine: true,
                    minVerticalPadding: 10,
                    // contentPadding: EdgeInsets.zero,
                    leading: const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4HIIl8vm4izK8M9wIAz5C_rGfJzA1noXe6A&usqp=CAU"),
                    ),
                    title: Text("Rohan Sharma",
                        style: googleFontstyle(
                          const TextStyle(
                            fontSize: 15,
                            color: Palatt.black,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 15,
                          itemPadding: const EdgeInsets.only(right: 8.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Palatt.primary,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        spaceVertical(5),
                        const Text(
                          "Good information given by him",
                          style: TextStyle(
                            fontSize: 13,
                            color: Palatt.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Palatt.boxShadow.withOpacity(0.5),
                  )
                ],
              );
            }),
        spaceVertical(10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          alignment: Alignment.centerRight,
          child: Text("All View Reviews",
              style: googleFontstyle(
                const TextStyle(
                  fontSize: 15,
                  color: Palatt.primary,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ),
        spaceVertical(10),
      ],
    );

    Widget certificate = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text("Certificate",
              style: googleFontstyle(
                const TextStyle(
                  fontSize: 18,
                  color: Palatt.black,
                  fontWeight: FontWeight.w500,
                ),
              )),
        ),
        spaceVertical(11),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemBuilder: (context, index) {
              return Container(
                height: 96,
                width: 96,
                margin: index == 10 ? null : const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4HIIl8vm4izK8M9wIAz5C_rGfJzA1noXe6A&usqp=CAU",
                      ),
                      fit: BoxFit.cover,
                    )),
              );
            },
          ),
        ),
        spaceVertical(20)
      ],
    );

    Widget contactbutton = RRButton(
      onTap: () {
        Get.bottomSheet(const ContactAstro());
      },
      data: "Get Contact Details",
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      backgroundColor: Palatt.primary,
      radius: 10,
      height: 50,
      style: const TextStyle(fontSize: 16, color: Palatt.white),
    );
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Directory Details",
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          registerbutton(),
          spaceVertical(20),
          astrodetails,
          availabilityTime,
          survecard,
          spaceVertical(20),
          bio,
          spaceVertical(20),
          certificate,
          gallery,
          review,
          contactbutton,
          spaceVertical(30),
        ],
      ),
    );
  }
}
