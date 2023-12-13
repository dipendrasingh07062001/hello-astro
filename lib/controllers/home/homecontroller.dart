import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/homenav/controller.dart';

class HomeController extends GetxController {
  final ScrollController scrollController = ScrollController();
  openDrawer() {
    Get.find<HomeNavController>().scaffoldKey.currentState!.openDrawer();
  }
}
