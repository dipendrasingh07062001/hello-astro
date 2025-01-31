import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/utils/buttons.dart';
import 'package:hello_astro_user/widgets/custom_appbar.dart';
import 'package:hello_astro_user/widgets/space.dart';
import 'package:intl/intl.dart';

import '../../widgets/textwidgets.dart';

class AstroDetailView extends GetView {
  const AstroDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    List langList = ["Hindi", "English", "Tamil"];
    Widget astrodetails = SizedBox(
      height: 230,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: Get.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 30,
            ),
            decoration: const BoxDecoration(
                color: Palatt.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
            child: Row(
              children: [
                Expanded(
                    child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 77,
                    width: 77,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkiIFjCOZ-mMeqxd2ryrneiHedE8G9S0AboA&usqp=CAU")),
                    ),
                  ),
                )),
                spaceHorizontal(10),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Zoha Merchant",
                        style: googleFontstyle(const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Palatt.white,
                        )),
                      ),
                      const Text(
                        "Tarot, Life Coach",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Palatt.white,
                        ),
                      ),
                      const Text(
                        "Language: Hindi, English",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Palatt.white,
                        ),
                      ),
                      const Text(
                        "Jaipur, Raj",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Palatt.white,
                        ),
                      ),
                      spaceVertical(5),
                      RRButton(
                        width: 90,
                        radius: 6,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 4),
                        borderColor: Palatt.white,
                        backgroundColor: Palatt.white,
                        style: googleFontstyle(const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Palatt.primary,
                        )),
                        onTap: () {},
                        data: "Follow",
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: Palatt.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: const [
                    BoxShadow(
                      color: Palatt.boxShadow,
                      blurRadius: 4,
                    )
                  ]),
              alignment: Alignment.center,
              child: const Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Palatt.black,
                        ),
                      ),
                      Text(
                        "Rating",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Palatt.grey,
                        ),
                      ),
                    ],
                  )),
                  VerticalDivider(
                    width: 2,
                    thickness: 2,
                    color: Palatt.primary,
                    endIndent: 10,
                    indent: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "10+",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Palatt.black,
                        ),
                      ),
                      Text(
                        "Exp(years)",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Palatt.grey,
                        ),
                      ),
                    ],
                  )),
                  VerticalDivider(
                    width: 2,
                    thickness: 2,
                    color: Palatt.primary,
                    endIndent: 10,
                    indent: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "4.5K",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Palatt.black,
                        ),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Palatt.grey,
                        ),
                      ),
                    ],
                  )),
                  VerticalDivider(
                    width: 2,
                    thickness: 2,
                    color: Palatt.primary,
                    endIndent: 10,
                    indent: 10,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "15.5K",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Palatt.black,
                        ),
                      ),
                      Text(
                        "Orders",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Palatt.grey,
                        ),
                      ),
                    ],
                  )),
                ],
              ),
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
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            childrenPadding: EdgeInsets.zero,
            title: Text("Availability Time",
                style: googleFontstyle(
                  const TextStyle(
                    fontSize: 16,
                    color: Palatt.black,
                    fontWeight: FontWeight.w500,
                  ),
                )),
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
                            DateFormat("dd MMM").format(
                                DateTime.now().add(Duration(days: index))),
                            style: googleFontstyle(
                              const TextStyle(
                                  fontSize: 16,
                                  color: Palatt.black,
                                  fontWeight: FontWeight.w500),
                            )),
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
      ),
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
          Text("98%",
              style: googleFontstyle(
                const TextStyle(
                  fontSize: 19,
                  color: Palatt.black,
                  fontWeight: FontWeight.w500,
                  height: 2,
                ),
              )),
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
    Widget callchatButton = Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: const BoxDecoration(color: Palatt.white, boxShadow: [
        BoxShadow(
          blurRadius: 6,
          color: Palatt.boxShadow,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RRButton2(
            height: 46,
            width: 108,
            onTap: () {},
            backgroundColor: Palatt.primary,
            radius: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Words.Call.tr,
                    style: googleFontstyle(
                      const TextStyle(
                        fontSize: 15,
                        color: Palatt.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                Text("₹5/min",
                    style: googleFontstyle(
                      const TextStyle(
                        fontSize: 9,
                        color: Palatt.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ))
              ],
            ),
          ),
          RRButton2(
            height: 46,
            width: 108,
            onTap: () {
              Get.toNamed(Routes.chatview);
            },
            backgroundColor: Palatt.primary,
            radius: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Words.Chat.tr,
                    style: googleFontstyle(
                      const TextStyle(
                        fontSize: 15,
                        color: Palatt.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                Text("₹5/min",
                    style: googleFontstyle(
                      const TextStyle(
                        fontSize: 9,
                        color: Palatt.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Palatt.white,
      appBar: CustomAppBar(
        title: "Astrologers Profile",
        actions: [
          const Icon(Icons.more_vert),
          spaceHorizontal(10),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          astrodetails,
          availabilityTime,
          survecard,
          spaceVertical(20),
          bio,
          spaceVertical(20),
          gallery,
          review,
        ],
      ),
      bottomNavigationBar: callchatButton,
    );
  }
}

Widget timingSlot(String timing,
    {Function()? onTap, bool isSelected = false, bool isbooked = false}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: Get.height * .04,
      width: Get.width * .4,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isbooked ? Palatt.grey.withOpacity(0.5) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: isSelected ? Palatt.primary : Colors.black26),
      ),
      child: textStyle(timing, Palatt.black,
          fontSize: 14, fontWeight: FontWeight.w500),
    ),
  );
}
