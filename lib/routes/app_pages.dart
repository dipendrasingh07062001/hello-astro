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
part './app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.home;
  static final routes = [
    GetPage(name: _Paths.splash, page: () => Splash()),
    GetPage(name: _Paths.login, page: () => const Login()),
    GetPage(name: _Paths.otpverification, page: () => const OtpVerfication()),
    GetPage(name: _Paths.home, page: () => const HomeView()),
    GetPage(name: _Paths.referview, page: () => ReferCodeView()),
    GetPage(
        name: _Paths.rechargeHistory, page: () => const RechargeHistoryView()),
    GetPage(name: _Paths.walletBalance, page: () => WalletBalanceView()),
    GetPage(
        name: _Paths.languageview,
        page: () => LanguageSelectView(),
        binding: LanguageBinding()),
  ];
}
