import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyOrdersBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyOrdersController>(() => MyOrdersController());
  }
}

class MyOrdersController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  RxInt currentIndex = 0.obs;
  onTapTab(int index) {
    currentIndex.value = index;
  }
}
