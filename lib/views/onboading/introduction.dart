import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/theme/colorpalatt.dart';
import 'package:hello_astro_user/utils/imageslink.dart';
import 'package:hello_astro_user/views/onboading/pageview_content.dart';

import '../../services/notification/service.dart';
import '../../widgets/backgroundimages.dart';
import '../../widgets/textwidgets.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  int currentPage = 0;
  late double h, w;

  List<Map<String, String>> pageviewData = [
    {
      "text":
          "To find your destined Hello Astrologer. Let's watch some live ession first & know how to take a consultation.",
      "image": AppImages.intro1,
      "title": "Live Session First"
    },
    {
      "text":
          "Once you find the 1Mantra to consult. You can have the first recharge offer : pay ₹1 and get ₹99 And the first special order price: ₹5/mins.",
      "image": AppImages.intro2,
      "title": "Enjoy your Speacial Offer!"
    },
  ];
  PageController pageController = PageController();
  // TabController? controller;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        color: Palatt.white,
        image: DecorationImage(
            image: AssetImage(AppImages.background),
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fitWidth),
      ),
      child: Scaffold(
        backgroundColor: Palatt.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        w * .8, h * .085, w * .02, h * .018),
                    child: InkWell(
                      child: textStyle('Skip >>', Palatt.black,
                          fontSize: 16, fontWeight: FontWeight.w500),
                      onTap: () {
                        // NotificationServices().shownotification();
                        // Timer.periodic(const Duration(milliseconds: 333),
                        //     (timer) {
                        //   if (now.difference(DateTime.now()).inSeconds.abs() >
                        //       progress) {
                        //     progress =
                        //         now.difference(DateTime.now()).inSeconds.abs();

                        //     NotificationServices().shownotification(progress);
                        //   }
                        //   if (progress > 100) {
                        //     timer.cancel();
                        //     NotificationServices().cancleNotification(0);
                        //   }
                        // });
                        Get.toNamed(Routes.login);
                        // NotificationServices.showNotification(
                        //     id: 0, title: "test", body: "this is body");
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: ((context) => const Login()),
                        //   ),
                        // );
                        // Get.offAll(() => const Login(
                        //       alreadyguest: false,
                        //     ));
                        // log(w.toString());
                      },
                    ),
                  ),
                  SizedBox(
                    height: h * .54,
                    width: double.infinity,
                    child: PageView.builder(
                      controller: pageController,
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: pageviewData.length,
                      itemBuilder: (context, index) => PageviewContent(
                        image: pageviewData[index]["image"].toString(),
                        text: pageviewData[index]["text"].toString(),
                        title: pageviewData[index]["title"].toString(),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      pageviewData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  SizedBox(height: h * .04),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(h * .014),
                      height: h * .08,
                      width: w * .16,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Palatt.primary),
                      child: FittedBox(
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          // size: 40.0,
                          color: Palatt.white,
                        ),
                      ),
                    ),
                    onTap: () {
                      if (currentPage < 1) {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear);
                      } else {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const Login()));
                        Get.toNamed(Routes.login);
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Animated dot build according to moving images and text (index)
  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: EdgeInsets.only(right: w * .02),
      height: h * .038,
      width: w * .038,
      decoration: BoxDecoration(
        border: Border.all(color: Palatt.primary),
        shape: BoxShape.circle,
        color: currentPage == index ? Palatt.primary : Palatt.white,
      ),
    );
  }
}
