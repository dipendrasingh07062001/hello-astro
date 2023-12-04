import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/views/home/homeview.dart';

import '../../utils/imageslink.dart';
import '../../views/chat_with_astrologer/chatview.dart';
import '../../views/wallet/walletbalance.dart';

class HomeNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeNavController>(() => HomeNavController());
  }
}

class HomeNavController extends GetxController {
  RxInt currentpage = 0.obs;
  RxList<Widget> body = RxList([
    HomeView(),
    ChatWithAstrologer(),
    ChatWithAstrologer(),
    WalletBalanceView()
  ]);
  List<Map<String, String>> bar = [
    {
      "name": "Home",
      "image": AppImages.home,
    },
    {
      "name": "Call Astrologer",
      "image": AppImages.callicon,
    },
    {
      "name": "Chat Astrologer",
      "image": AppImages.chaticon,
    },
    {
      "name": "Wallet",
      "image": AppImages.walletborder,
    }
  ];
  ontapbaritem(int index) {
    currentpage.value = index;
  }
}
