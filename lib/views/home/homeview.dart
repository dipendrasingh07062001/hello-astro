import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/views/home/drawer.dart';

import '../../controllers/home/homecontroller.dart';
import '../../widgets/cards.dart';
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
                          offset: Offset(0, 5)),
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
                      height: h * .05,
                    ),
                    SizedBox(
                      height: 50,
                      width: Get.width,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: w * .04, top: h * .01, right: w * .032),
                            child: InkWell(
                              onTap: controller.openDrawer,
                              child: SvgPicture.asset(AppImages.menu),
                            ),
                          ),
                          // SvgPicture.asset(
                          //   locationImage,
                          //   height: w * .068,
                          // ),
                          // Padding(
                          //   padding:
                          //       EdgeInsets.only(left: w * .01, right: w * .15),
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: [
                          //       textStyle('Your City'.tr, colYrCity,
                          //           fontSize: w * .022),
                          //       Row(
                          //         children: [
                          //           DropdownButton<String>(
                          //             isDense: true,
                          //             elevation: 8,
                          //             value: dropvalue,
                          //             underline: Container(),
                          //             icon: Icon(Icons.keyboard_arrow_down,
                          //                 color: colBlack, size: w * .07),
                          //             items: <String>[
                          //               'Ajmer',
                          //               'Churu',
                          //               'Jaipur',
                          //               'Kota',
                          //               'Nagaur',
                          //               'Sikar',
                          //               'Sirohi',
                          //             ].map<DropdownMenuItem<String>>(
                          //                 (String value) {
                          //               return DropdownMenuItem<String>(
                          //                 value: value,
                          //                 child: textStyle(value, colBlack,
                          //                     fontSize: w * .039,
                          //                     fontWeight: FontWeight.w500),
                          //               );
                          //             }).toList(),
                          //             onChanged: (String? newValue) {
                          //               setState(() {
                          //                 dropvalue = newValue!;
                          //               });
                          //             },
                          //           ),
                          //         ],
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          // Expanded(
                          //   child: SingleChildScrollView(
                          //     scrollDirection: Axis.horizontal,
                          //     child: Row(
                          //       children: [
                          //         InkWell(
                          //           onTap: (box.read(UserData.isguestuser) ??
                          //                   false)
                          //               ? () {
                          //                   Get.bottomSheet(
                          //                       Container(
                          //                           padding:
                          //                               const EdgeInsets.only(
                          //                                   top: 50),
                          //                           child: const Login(
                          //                             alreadyguest: true,
                          //                           )),
                          //                       isScrollControlled: true);
                          //                 }
                          //               : () {
                          //                   Navigator.push(
                          //                       context,
                          //                       MaterialPageRoute(
                          //                           builder: ((context) =>
                          //                               const Payment())));
                          //                 },
                          //           child: Container(
                          //             decoration: const BoxDecoration(
                          //               color: colPrimary,
                          //               borderRadius: BorderRadius.all(
                          //                   Radius.circular(20)),
                          //             ),
                          //             height: h * .036,
                          //             // width: w * .22,
                          //             padding: const EdgeInsets.symmetric(
                          //                 horizontal: 10),
                          //             child: Row(
                          //               mainAxisAlignment:
                          //                   MainAxisAlignment.spaceEvenly,
                          //               children: [
                          //                 SvgPicture.asset(walletImage),
                          //                 const SizedBox(
                          //                   width: 10,
                          //                 ),
                          //                 WalletBalance(
                          //                   color: Palatt.white,
                          //                 ),
                          //                 // textStyle("₹ 200", Palatt.white,
                          //                 //     w * .039, FontWeight.bold),
                          //               ],
                          //             ),
                          //           ),
                          //         ),
                          //         Padding(
                          //           padding: EdgeInsets.only(right: w * 0.00),
                          //           child: Padding(
                          //             padding: EdgeInsets.only(
                          //                 left: w * .025, right: w * .02),
                          //             child: InkWell(
                          //               child: SvgPicture.asset(notifiImage),
                          //               onTap: () {
                          //                 Navigator.push(
                          //                     context,
                          //                     MaterialPageRoute(
                          //                         builder: ((context) =>
                          //                             const Notification1())));
                          //               },
                          //             ),
                          //           ),
                          //         ),
                          //         // SvgPicture.asset('assets/icons/language_1.svg')
                          //         GestureDetector(
                          //           onTap: () {
                          //             Get.offAll(const Language());
                          //           },
                          //           child: Image.asset(
                          //               'assets/icons/language@2x.png',
                          //               height: h * .025),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    // search Text Box
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * .040, vertical: h * .015),
                      child: SizedBox(
                        width: double.infinity,
                        // w * .92,
                        height: h * .05,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(fontSize: w * .049),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: h * .0022),
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Astrologers, products,........'.tr,
                            hintStyle: TextStyle(
                                fontSize: w * .04,
                                color: const Color(0xffbababa)),
                            fillColor: Palatt.white,
                            filled: true,
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Palatt.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Palatt.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Offer Banner
                    // Padding(
                    //   padding: EdgeInsets.symmetric(horizontal: w * .042),
                    //   child: Image.network(
                    //     homeController.bannerlist
                    //         .where((p0) => p0.position!.toLowerCase() == "top")
                    //         .toList()
                    //         .first
                    //         .image!,
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                  ],
                ),
                // Astrologer Scroll cards
                // Container(
                //   height: h * .18,
                //   margin: EdgeInsets.only(top: h * .4),
                //   child: ListView.builder(
                //     physics: const BouncingScrollPhysics(),
                //     shrinkWrap: true,
                //     controller: controller.scrollController,
                //     scrollDirection: Axis.horizontal,
                //     itemCount: 0,
                //     itemBuilder: (BuildContext context, int index) {
                //       homeController.astrologerlist[index];
                //       return GestureDetector(
                //         onTap: () {
                //           Get.to(() => AstroProfile(
                //                 id: homeController.astrologerlist[index].id,
                //               ));
                //         },
                //         child: AstroCard(
                //           name: homeController.astrologerlist[index].name ?? "",
                //           experience:
                //               "Exp: ${homeController.astrologerlist[index].experience} years",
                //           ability:
                //               homeController.astrologerlist[index].expertise ??
                //                   "",
                //           language:
                //               "Language: ${(homeController.astrologerlist[index].language) ?? ""}",
                //           offer:
                //               homeController.astrologerlist[index].offer ?? "",
                //           price: homeController.astrologerlist[index].price
                //               .toString(),
                //           image:
                //               homeController.astrologerlist[index].image ?? "",
                //           islive:
                //               homeController.astrologerlist[index].livestatus ==
                //                       1
                //                   ? true
                //                   : false,
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
            Wrap(
              children: [
                Fcard(
                  image: AppImages.chat,
                  text: "Chat with Astrologer",
                  width: 80,
                  onTap: () {},
                  margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  borderRadius: BorderRadius.circular(10),
                ),
                Fcard(
                  image: AppImages.call,
                  text: "Call with Astrologer",
                  width: 80,
                  onTap: () {},
                  margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  borderRadius: BorderRadius.circular(10),
                ),
                Fcard(
                  image: AppImages.blog,
                  text: "Blogs",
                  width: 80,
                  onTap: () {},
                  margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
                  borderRadius: BorderRadius.circular(10),
                ),
              ],
            ),
            const Horoscope(),
            const FreeServices(),
            const Text(
              "Our Astrologer",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            Wrap(
              children: List.generate(10, (index) {
                return Container(
                  height: 150,
                  width: Get.width / 2.3,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration:
                      BoxDecoration(color: Palatt.yellow2nd, boxShadow: [
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
                          Expanded(
                              flex: 5,
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
                                                radius: 25,
                                                backgroundImage: NetworkImage(
                                                  "https://myworkdesk.tech/designer/html/hello-astro/assets/images/user-profile.png",
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                top: 38,
                                                left: 0,
                                                right: 0,
                                                child: Container(
                                                  height: 15,
                                                  decoration: BoxDecoration(
                                                    color: Palatt.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: List.generate(
                                                        5,
                                                        (index) => Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      right: 1),
                                                              child: Icon(
                                                                Icons.star,
                                                                size: 8,
                                                              ),
                                                            )),
                                                  ),
                                                )),
                                            Positioned(
                                              top: 55,
                                              right: 0,
                                              left: 0,
                                              child: FittedBox(
                                                child: Text(
                                                  "70000 Orders",
                                                  style: TextStyle(
                                                    fontSize: 9,
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
                                        children: [],
                                      ))
                                ],
                              )),
                          Expanded(
                              flex: 4,
                              child: Container(
                                color: Palatt.white,
                              )),
                        ],
                      ),
                      Positioned(
                        top: -5,
                        right: -20,
                        child: Transform.rotate(
                          angle: 0.8,
                          child: Container(
                            height: 10,
                            width: 60,
                            margin: const EdgeInsets.only(
                              top: 20,
                            ),
                            color: Palatt.primary,
                            alignment: Alignment.center,
                            child: const Text(
                              "Celebrity",
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
