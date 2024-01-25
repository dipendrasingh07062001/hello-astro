import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/api/apiconstants.dart';
import 'package:hello_astro_user/controllers/homenav/controller.dart';
import 'package:hello_astro_user/models/home/homemodel.dart';

import '../../api/apiservices.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  RxDouble turns = 0.0.obs;
  RxList<Astrologer> astrologers = RxList();
  RxList<Banners> banners = RxList();
  RxList<Review> reviews = RxList();
  CarouselController carouselController = CarouselController();
  RxInt currentbanner = 0.obs;
  RxBool isloading = false.obs;

  increamenteturn([bool value = false]) {
    Future.delayed(Duration(seconds: value ? 1 : 0), () {
      turns.value += 1;
    });
  }

  openDrawer() {
    Get.find<HomeNavController>().scaffoldKey.currentState!.openDrawer();
  }

  gethomeData() async {
    ApiClient apiClient = ApiClient();
    isloading.value = true;
    await apiClient.getRequest(ApiUrls.home).then((value) {
      if (value != null) {
        HomeModel homeModel = HomeModel.fromJson(value["data"]);
        astrologers.value = homeModel.astrologers ?? [];
        banners.value = homeModel.banners ?? [];
        astrologers.value = homeModel.astrologers ?? [];
        reviews.value = homeModel.reviews ?? [];
        isloading.value = false;
        return;
      }
      isloading.value = false;
      return;
    });
    isloading.value = false;
  }

  onbannerchange(int index) => currentbanner.value = index;
}
