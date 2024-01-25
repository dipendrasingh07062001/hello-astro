import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/home/homecontroller.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/views/home/homeview.dart';

import '../../utils/imageslink.dart';
import '../../views/chat_with_astrologer/chatview.dart';
import '../../views/wallet/walletbalance.dart';

class HomeNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeNavController>(() => HomeNavController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

class HomeNavController extends GetxController {
  @override
  void onInit() {
    currentpage.value = Get.arguments ?? 0;
    super.onInit();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  RxInt currentpage = 0.obs;
  RxList<Widget> body = RxList([
    HomeView(),
    ChatWithAstrologer(),
    ChatWithAstrologer(),
    WalletBalanceView()
  ]);
  List<Map<String, String>> bar = [
    {
      "name": Words.Home,
      "image": AppImages.home,
    },
    {
      "name": Words.CallAstrologer,
      "image": AppImages.callicon,
    },
    {
      "name": Words.ChatAstrologer,
      "image": AppImages.chaticon,
    },
    {
      "name": Words.Wallet,
      "image": AppImages.walletborder,
    }
  ];
  ontapbaritem(int index) {
    currentpage.value = index;
  }
}
