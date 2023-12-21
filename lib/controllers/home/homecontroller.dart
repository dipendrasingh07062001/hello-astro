import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/homenav/controller.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  RxDouble turns = 0.0.obs;
  increamenteturn([bool value = false]) {
    Future.delayed(Duration(seconds: value ? 1 : 0), () {
      turns.value += 1;
    });
  }

  openDrawer() {
    Get.find<HomeNavController>().scaffoldKey.currentState!.openDrawer();
  }
}
