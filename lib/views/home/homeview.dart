import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:hello_astro_user/controllers/homenav/controller.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/views/home/drawer.dart';
import 'package:hello_astro_user/views/home/horoscope.dart';
import 'package:hello_astro_user/widgets/dialogs/rating.dart';
import 'package:hello_astro_user/widgets/space.dart';

import '../../controllers/home/homecontroller.dart';
import '../../models/home/homemodel.dart';
import '../../models/sunshins.dart';
import '../../routes/app_pages.dart';
import '../../widgets/cards.dart';
import '../../widgets/dialogs/logout.dart';
import '../wallet/walletbalance.dart';
import 'freeservices.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController(), permanent: false);
  double h = Get.height, w = Get.width;
  @override
  void initState() {
    controller.increamenteturn(true);
    controller.gethomeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 1), () {
    //   Get.dialog(RatingDialog());
    // });
    Widget hangimage = SizedBox(
      height: 148,
      width: 140,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Obx(
                () => AnimatedRotation(
                  turns: controller.turns.value,
                  duration: const Duration(seconds: 10),
                  onEnd: controller.increamenteturn,
                  child: Image.asset(
                    AppImages.handng,
                    fit: BoxFit.contain,
                    height: 148,
                    width: 148,
                  ),
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.hand,
              width: 65,
              height: 76,
            ),
          )
        ],
      ),
    );

    Widget banners = Obx(() => controller.isloading.value
        ? Container()
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              CarouselSlider.builder(
                itemCount: controller.banners.length,
                carouselController: controller.carouselController,
                itemBuilder: (_, index1, index2) {
                  Banners model = controller.banners[index1];
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: w * .040),
                    height: 120,
                    width: w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(
                              // model.image ??
                              //     "", //
                              "https://images.unsplash.com/photo-1519681393784-d120267933ba?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YXN0cm9waG90b2dyYXBoeXxlbnwwfHwwfHx8MA%3D%3D"),
                          fit: BoxFit.cover,
                        )),
                  );
                },
                options: CarouselOptions(
                  // height: 120,
                  aspectRatio: 25 / 8,
                  viewportFraction: 1,
                  // autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  // autoPlayInterval: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.linear,
                  autoPlay: true,
                  onPageChanged: (index, _) => controller.onbannerchange(index),
                ),
              ),
              const SizedBox(height: 20),
              Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      controller.banners.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor:
                                  controller.currentbanner.value == index
                                      ? Palatt.primary
                                      : Palatt.boxShadow,
                            ),
                          ))))
            ],
          ));
    return Scaffold(
      backgroundColor: Palatt.white,
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 360,
                  width: w,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palatt.boxShadow,
                        blurRadius: 2,
                        offset: Offset(0, 3),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      hangimage,
                      const SizedBox(
                        height: 20,
                      )
                    ],
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
                                  onTap: () {
                                    // Get.offAllNamed(Routes.homenav,
                                    //     arguments: 3);
                                    Get.find<HomeNavController>()
                                        .currentpage
                                        .value = 3;
                                    // Get.toNamed(Routes.walletBalance);
                                  },
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          AppImages.wallet,
                                          height: 12,
                                          width: 14,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const WalletBalance(
                                          color: Palatt.white,
                                          size: 16,
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
                                      onTap: () {
                                        Get.toNamed(Routes.notification);
                                      },
                                    ),
                                  ),
                                ),
                                // SvgPicture.asset('assets/icons/language_1.svg')
                                GestureDetector(
                                  onTap: () {
                                    Get.toNamed(Routes.languageview);
                                  },
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
                          iconColor: Palatt.primary,
                          contentPadding:
                              EdgeInsets.only(top: h * .0022, right: 10),
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
            banners,
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: w * .040, vertical: h * .015),
              child: Row(
                children: [
                  Fcard(
                    image: AppImages.chat,
                    text: Words.chatWithAstrologer.tr,
                    width: 80,
                    height: 100,
                    padding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: w * 0.12),
                    onTap: () {},
                    margin: const EdgeInsets.only(
                      top: 20,
                      right: 12.5,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  Fcard(
                    image: AppImages.call,
                    text: "Talk to Astrologer".tr,
                    width: 80,
                    padding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: w * 0.12),
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
                  Text(
                    Words.horroscope.tr,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () => Get.to(() => const Horoscope()),
                    child: Text(
                      Words.SeeAll.tr,
                      style: const TextStyle(
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
              padding: EdgeInsets.symmetric(horizontal: w * .040, vertical: 0),
              child: Row(
                  children: List.generate(4, (index) {
                Sunshine e = SunshineData.sunshines[index];
                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: index == 3 ? 0 : 10),
                    child: HoroCard(
                      image: e.image,
                      onTap: () {},
                      title: e.name.tr,
                    ),
                  ),
                );
              })),
            ),
            spaceVertical(15),
            const FreeServices(),
            spaceVertical(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .040),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Words.chatWithAstrologer.tr,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      Words.SeeAll.tr,
                      style: const TextStyle(
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
            // spaceVertical(13),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(controller.astrologers.length, (index) {
                  Astrologer astrologer = controller.astrologers[index];
                  return GestureDetector(
                    onTap: () => Get.toNamed(Routes.astrodetailsview),
                    child: Container(
                      height: 160,
                      width: 240,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Palatt.yellow2nd,
                          boxShadow: const [
                            BoxShadow(
                              color: Palatt.boxShadow,
                              blurRadius: 6,
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
                                                    backgroundColor:
                                                        Palatt.white,
                                                    child: CircleAvatar(
                                                      radius: 31,
                                                      backgroundImage: NetworkImage(
                                                          astrologer.image ?? ""
                                                          // "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                                                          ),
                                                      onBackgroundImageError:
                                                          (exception,
                                                              stackTrace) {},
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                    top: 52,
                                                    left: 7,
                                                    right: 7,
                                                    child: Container(
                                                      width: 60,
                                                      height: 15,
                                                      decoration: BoxDecoration(
                                                        color: Palatt.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
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
                                                            (index) =>
                                                                const Padding(
                                                                  padding: EdgeInsets
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
                                                const Positioned(
                                                  top: 68,
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
                                                astrologer.name ?? "",
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                // "English, Hindi",
                                                astrologer.language ?? "",
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                // "Tarot, Life Coach",
                                                astrologer.expertise.toString(),
                                                style: const TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              spaceVertical(20)
                                            ],
                                          ))
                                    ],
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: const BoxDecoration(
                                  color: Palatt.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                width: Get.width,
                                padding: const EdgeInsets.symmetric(
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
                                          "Exp: ${astrologer.experience} year",
                                          style: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: Palatt.grey),
                                        ),
                                        Text(
                                          // "Jaipur, Raj",
                                          "${astrologer.city ?? ""}, ${astrologer.state ?? ""}"
                                                  .camelCase ??
                                              "",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: Palatt.grey),
                                        ),
                                        Text(
                                          "₹ ${astrologer.chatPrice}/min",
                                          style: const TextStyle(
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
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              AppImages.chaticon,
                                              // ignore: deprecated_member_use
                                              color: Palatt.white,
                                              height: 13,
                                            ),
                                            spaceHorizontal(10),
                                            Text(
                                              Words.Chat.tr,
                                              style: const TextStyle(
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
                    ),
                  );
                }),
              ),
            ),
            spaceVertical(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .040),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Words.callWithAstrologer.tr,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      Words.SeeAll.tr,
                      style: const TextStyle(
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
            // spaceVertical(13),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(controller.astrologers.length, (index) {
                  Astrologer astrologer = controller.astrologers[index];
                  return GestureDetector(
                    onTap: () => Get.toNamed(Routes.astrodetailsview),
                    child: Container(
                      height: 160,
                      width: 240,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Palatt.yellow2nd,
                          boxShadow: const [
                            BoxShadow(
                              color: Palatt.boxShadow,
                              blurRadius: 6,
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
                                                    backgroundColor:
                                                        Palatt.white,
                                                    child: CircleAvatar(
                                                      radius: 31,
                                                      backgroundImage: NetworkImage(
                                                          astrologer.image ?? ""
                                                          // "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                    top: 52,
                                                    left: 7,
                                                    right: 7,
                                                    child: Container(
                                                      width: 60,
                                                      height: 15,
                                                      decoration: BoxDecoration(
                                                        color: Palatt.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
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
                                                            (index) =>
                                                                const Padding(
                                                                  padding: EdgeInsets
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
                                                const Positioned(
                                                  top: 68,
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
                                                astrologer.name ?? "",
                                                // "Zoha Merchant",
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const Text(
                                                "English, Hindi",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              const Text(
                                                "Tarot, Life Coach",
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              spaceVertical(20),
                                            ],
                                          ))
                                    ],
                                  )),
                              Expanded(
                                  child: Container(
                                width: Get.width,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: const BoxDecoration(
                                  color: Palatt.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Exp: ${astrologer.experience} year",
                                          style: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: Palatt.grey),
                                        ),
                                        Text(
                                          "${astrologer.city}, ${astrologer.state}",
                                          // "Jaipur, Raj",
                                          style: const TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w300,
                                              color: Palatt.grey),
                                        ),
                                        Text(
                                          "₹ ${astrologer.callPrice}/min",
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
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                AppImages.callfilled),
                                            spaceHorizontal(10),
                                            Text(
                                              Words.Call.tr,
                                              style: const TextStyle(
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
                    ),
                  );
                }),
              ),
            ),
            spaceVertical(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * .040, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Words.UserReview.tr,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.review);
                    },
                    child: Text(
                      Words.SeeAll.tr,
                      style: const TextStyle(
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
                itemCount: controller.reviews.length,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(vertical: 7.5),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Review review = controller.reviews[index];
                  return Container(
                    height: 145,
                    width: 270,
                    margin:
                        EdgeInsets.only(right: 15, left: index == 0 ? 15 : 0),
                    decoration: BoxDecoration(
                        color: Palatt.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Palatt.boxShadow,
                            blurRadius: 6,
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
                                // review. ?? ""
                                "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80",
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rohan Sharma",
                                  style: const TextStyle(
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
                                const Text(
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
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
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
            spaceVertical(Get.height * 0.14)
          ],
        ),
      ),
    );
  }
}
