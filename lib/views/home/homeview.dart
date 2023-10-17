import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';

import '../../controllers/home/homecontroller.dart';

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
                              child: SvgPicture.asset(AppImages.menu),
                              // Icon(
                              //   Icons.format_list_bulleted,
                              //   size: w * .068,
                              // ),
                              onTap: () {
                                // homeController.scaffoldKey.currentState!
                                //     .openDrawer();
                                // drawerVisible = true;
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => const HomeDrawer(),
                                //   ),
                                // );
                              },
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
                            prefixIcon: Transform.scale(
                              scale: .38,
                              child: SvgPicture.asset(
                                'assets/icons/feather_search.svg',
                              ),
                            ),
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
          ],
        ),
      ),
    );
  }
}
