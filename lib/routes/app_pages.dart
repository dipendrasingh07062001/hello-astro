import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/onboarding/languagecontroller.dart';
import 'package:hello_astro_user/views/home/homeview.dart';
import 'package:hello_astro_user/views/onboading/languageselectview.dart';
import 'package:hello_astro_user/views/onboading/loginview.dart';
import 'package:hello_astro_user/views/onboading/otpverification.dart';
import 'package:hello_astro_user/views/onboading/referview.dart';
import 'package:hello_astro_user/views/onboading/splash.dart';
import 'package:hello_astro_user/views/recharge_history/recharge_history.dart';
import 'package:hello_astro_user/views/wallet/walletbalance.dart';
import 'package:hello_astro_user/controllers/orders/myorderscontroller.dart';
import 'package:hello_astro_user/views/chat_with_astrologer/chatview.dart';
import 'package:hello_astro_user/views/helpnsupport/helpnsupport.dart';
import 'package:hello_astro_user/views/myorders/myorders.dart';
part './app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.chatwithastrologer;
  static final routes = [
    GetPage(name: _Paths.splash, page: () => Splash()),
    GetPage(name: _Paths.login, page: () => const Login()),
    GetPage(name: _Paths.otpverification, page: () => const OtpVerfication()),
    GetPage(name: _Paths.home, page: () => const HomeView()),
    GetPage(name: _Paths.referview, page: () => ReferCodeView()),
    GetPage(name: _Paths.helpnsupport, page: () => HelpNSupport()),
    GetPage(name: _Paths.chatwithastrologer, page: () => ChatWithAstrologer()),
    GetPage(
        name: _Paths.rechargeHistory, page: () => const RechargeHistoryView()),
    GetPage(name: _Paths.walletBalance, page: () => WalletBalanceView()),
    GetPage(name: _Paths.helpnsupport, page: () => HelpNSupport()),
    GetPage(name: _Paths.chatwithastrologer, page: () => ChatWithAstrologer()),
    GetPage(
        name: _Paths.languageview,
        page: () => LanguageSelectView(),
        binding: LanguageBinding()),
    GetPage(
      name: _Paths.myorders,
      page: () => MyOrders(),
      binding: MyOrdersBindings(),
    ),
    GetPage(
      name: _Paths.languageview,
      page: () => LanguageSelectView(),
      binding: LanguageBinding(),
    ),
  ];
}
