import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/views/home/drawer.dart';

import '../../controllers/home/homecontroller.dart';
import '../../models/sunshins.dart';
import '../../widgets/cards.dart';
import '../wallet/walletbalance.dart';
import 'freeservices.dart';
import 'horoscope.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController(), permanent: false);
  double h = Get.height, w = Get.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palatt.white,
      key: controller.scaffoldKey,
      drawer: const HomeDrawer(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: h * .47,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palatt.boxShadow,
                        blurRadius: 4,
                        spreadRadius: -2,
                        offset: Offset(0, 5),
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Palatt.white,
                        Palatt.primary,
                        Palatt.primary,
                      ],
                    ),
                  ),
                ),
                //Top Bar starting from here
                Column(
                  children: [
                    SizedBox(
                      height: h * .07,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: w * .040),
                      height: 50,
                      width: Get.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: controller.openDrawer,
                            child: SvgPicture.asset(
                              AppImages.menu,
                              height: 22,
                              width: 22,
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Palatt.primary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    height: h * .036,
                                    // width: w * .22,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SvgPicture.asset(
                                          AppImages.wallet,
                                          height: 20,
                                          width: 20,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const WalletBalance(
                                          color: Palatt.white,
                                        ),
                                        // textStyle("₹ 200", Palatt.white,
                                        //     w * .039, FontWeight.bold),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: w * 0.00),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: w * .025, right: w * .02),
                                    child: InkWell(
                                      child: SvgPicture.asset(
                                        AppImages.notification,
                                        height: 25,
                                        width: 25,
                                      ),
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                                // SvgPicture.asset('assets/icons/language_1.svg')
                                GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    AppImages.language,
                                    height: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // search Text Box
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * .040, vertical: h * .015),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(fontSize: w * .049),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: h * .0022),
                          prefixIcon: const Icon(Icons.search),
                          // isDense: tr,
                          hintText: 'Astrologers, products,........'.tr,
                          hintStyle: TextStyle(
                              fontSize: w * .04,
                              color: const Color(0xffbababa)),
                          fillColor: Palatt.white,
                          filled: true,
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Palatt.white),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Palatt.white),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: w * .040, vertical: h * .015),
              child: Row(
                children: [
                  Fcard(
                    image: AppImages.chat,
                    text: "Chat with \nAstrologer",
                    width: 80,
                    height: 100,
                    onTap: () {},
                    margin: const EdgeInsets.only(
                      top: 20,
                      right: 12.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  Fcard(
                    image: AppImages.call,
                    text: "Call with \nAstrologer",
                    width: 80,
                    height: 100,
                    onTap: () {},
                    margin: const EdgeInsets.only(top: 20, left: 12.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Fcard(
                  //   image: AppImages.blog,
                  //   text: "Blogs",
                  //   width: 80,
                  //   onTap: () {},
                  //   margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .040, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Horoscope",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Palatt.primary,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: w * .040, vertical: h * .0),
              child: Row(
                  children: List.generate(4, (index) {
                Sunshine e = SunshineData.sunshines[index];
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: index == 3 ? 0 : 10),
                    child: HoroCard(
                      image: e.image,
                      onTap: () {},
                      title: e.name,
                    ),
                  ),
                );
              })),
            ),

            // const Horoscope(),
            const FreeServices(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .040, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Chat with Astrologer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Palatt.primary,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Container(
                    height: 160,
                    width: 240,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Palatt.yellow2nd,
                        boxShadow: [
                          BoxShadow(
                            color: Palatt.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 4,
                          )
                        ]),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: 100,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                child: CircleAvatar(
                                                  radius: 33,
                                                  backgroundColor: Palatt.white,
                                                  child: CircleAvatar(
                                                    radius: 31,
                                                    backgroundImage:
                                                        NetworkImage(
                                                      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  top: 48,
                                                  left: 7,
                                                  right: 7,
                                                  child: Container(
                                                    width: 60,
                                                    height: 15,
                                                    decoration: BoxDecoration(
                                                      color: Palatt.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 2),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: List.generate(
                                                          5,
                                                          (index) => Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        1),
                                                                child: Icon(
                                                                  Icons.star,
                                                                  size: 10,
                                                                  color: Palatt
                                                                      .primary,
                                                                ),
                                                              )),
                                                    ),
                                                  )),
                                              Positioned(
                                                top: 65,
                                                right: 0,
                                                left: 0,
                                                child: Center(
                                                  child: Text(
                                                    "70000 Orders",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Zoha Merchant",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "English, Hindi",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Tarot, Life Coach",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                            Expanded(
                                child: Container(
                              color: Palatt.white,
                              width: Get.width,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Exp: 6 year",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            color: Palatt.grey),
                                      ),
                                      Text(
                                        "Jaipur, Raj",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            color: Palatt.grey),
                                      ),
                                      Text(
                                        "₹ 12/min",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Palatt.black),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 60,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Palatt.primary,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      padding: const EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          SvgPicture.asset(
                                            AppImages.chaticon,
                                            color: Palatt.white,
                                            height: 13,
                                          ),
                                          Text(
                                            "Chat",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: Palatt.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                        // Positioned(
                        //   top: -5,
                        //   right: -20,
                        //   child: Transform.rotate(
                        //     angle: 0.8,
                        //     child: Container(
                        //       height: 10,
                        //       width: 60,
                        //       margin: const EdgeInsets.only(
                        //         top: 20,
                        //       ),
                        //       color: Palatt.primary,
                        //       alignment: Alignment.center,
                        //       child: const Text(
                        //         "Celebrity",
                        //         style: TextStyle(
                        //           fontSize: 8,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .040, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Call with Astrologer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Palatt.primary,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index) {
                  return Container(
                    height: 160,
                    width: 240,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Palatt.yellow2nd,
                        boxShadow: [
                          BoxShadow(
                            color: Palatt.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 4,
                          )
                        ]),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: 100,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                child: CircleAvatar(
                                                  radius: 33,
                                                  backgroundColor: Palatt.white,
                                                  child: CircleAvatar(
                                                    radius: 31,
                                                    backgroundImage:
                                                        NetworkImage(
                                                      "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                  top: 48,
                                                  left: 7,
                                                  right: 7,
                                                  child: Container(
                                                    width: 60,
                                                    height: 15,
                                                    decoration: BoxDecoration(
                                                      color: Palatt.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 2),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: List.generate(
                                                          5,
                                                          (index) => Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    horizontal:
                                                                        1),
                                                                child: Icon(
                                                                  Icons.star,
                                                                  size: 10,
                                                                  color: Palatt
                                                                      .primary,
                                                                ),
                                                              )),
                                                    ),
                                                  )),
                                              Positioned(
                                                top: 65,
                                                right: 0,
                                                left: 0,
                                                child: Center(
                                                  child: Text(
                                                    "70000 Orders",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 3,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Zoha Merchant",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "English, Hindi",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Tarot, Life Coach",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ))
                                  ],
                                )),
                            Expanded(
                                child: Container(
                              color: Palatt.white,
                              width: Get.width,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Exp: 6 year",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            color: Palatt.grey),
                                      ),
                                      Text(
                                        "Jaipur, Raj",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                            color: Palatt.grey),
                                      ),
                                      Text(
                                        "₹ 12/min",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: Palatt.black),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 60,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          color: Palatt.primary,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      padding: const EdgeInsets.all(5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          SvgPicture.asset(
                                              AppImages.callfilled),
                                          Text(
                                            "Call",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600,
                                                color: Palatt.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                        // Positioned(
                        //   top: -5,
                        //   right: -20,
                        //   child: Transform.rotate(
                        //     angle: 0.8,
                        //     child: Container(
                        //       height: 10,
                        //       width: 60,
                        //       margin: const EdgeInsets.only(
                        //         top: 20,
                        //       ),
                        //       color: Palatt.primary,
                        //       alignment: Alignment.center,
                        //       child: const Text(
                        //         "Celebrity",
                        //         style: TextStyle(
                        //           fontSize: 8,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .040, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Call with Astrologer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Palatt.primary,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 7.5),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 145,
                    width: 270,
                    margin:
                        EdgeInsets.only(right: 15, left: index == 0 ? 15 : 0),
                    decoration: BoxDecoration(
                        color: Palatt.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Palatt.boxShadow.withOpacity(0.2),
                            blurRadius: 13,
                            offset: const Offset(0, 2),
                          )
                        ]),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rohan Sharma",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Palatt.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: List.generate(
                                      5,
                                      (index) => const Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Icon(
                                              Icons.star,
                                              size: 13,
                                              color: Palatt.primary,
                                            ),
                                          )),
                                ),
                                Text(
                                  "Jaipur",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Palatt.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 15,
                            color: Palatt.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
