import 'package:get/get.dart';
import 'package:hello_astro_user/controllers/homenav/controller.dart';
import 'package:hello_astro_user/controllers/onboarding/languagecontroller.dart';
import 'package:hello_astro_user/views/aboutus/view.dart';
import 'package:hello_astro_user/views/chat/view.dart';
import 'package:hello_astro_user/views/directory/directoryactrodetails.dart';
import 'package:hello_astro_user/views/directory/view.dart';
import 'package:hello_astro_user/views/faq/faqs.dart';
import 'package:hello_astro_user/views/folowing/view.dart';
import 'package:hello_astro_user/views/home/homeview.dart';
import 'package:hello_astro_user/views/homenavbar/view.dart';
import 'package:hello_astro_user/views/onboading/introduction.dart';
import 'package:hello_astro_user/views/onboading/languageselectview.dart';
import 'package:hello_astro_user/views/onboading/loginview.dart';
import 'package:hello_astro_user/views/onboading/otpverification.dart';
import 'package:hello_astro_user/views/onboading/referview.dart';
import 'package:hello_astro_user/views/onboading/splash.dart';
import 'package:hello_astro_user/views/privacypolicy/view.dart';
import 'package:hello_astro_user/views/recharge_history/recharge_history.dart';
import 'package:hello_astro_user/views/refernearn/view.dart';
import 'package:hello_astro_user/views/reviews/view.dart';
import 'package:hello_astro_user/views/termsncondition/view.dart';
import 'package:hello_astro_user/views/wallet/walletbalance.dart';
import 'package:hello_astro_user/controllers/orders/myorderscontroller.dart';
import 'package:hello_astro_user/views/chat_with_astrologer/chatview.dart';
import 'package:hello_astro_user/views/helpnsupport/helpnsupport.dart';
import 'package:hello_astro_user/views/myorders/myorders.dart';

import '../controllers/profile/controller.dart';
import '../views/astroprofile/astroview.dart';
import '../views/notification/view.dart';
import '../views/profile/profile.dart';
part './app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.splash;
  static final routes = [
    GetPage(name: _Paths.splash, page: () => Splash()),
    GetPage(name: _Paths.login, page: () => const Login()),
    GetPage(name: _Paths.review, page: () => const ReviewsView()),
    GetPage(name: _Paths.notification, page: () => const NotificationView()),
    GetPage(name: _Paths.intro, page: () => const Introduction()),
    GetPage(name: _Paths.otpverification, page: () => const OtpVerfication()),
    GetPage(name: _Paths.home, page: () => const HomeView()),
    GetPage(name: _Paths.referview, page: () => ReferCodeView()),
    GetPage(name: _Paths.helpnsupport, page: () => const HelpNSupport()),
    GetPage(
        name: _Paths.chatwithastrologer,
        page: () => const ChatWithAstrologer()),
    GetPage(
        name: _Paths.rechargeHistory, page: () => const RechargeHistoryView()),
    GetPage(name: _Paths.walletBalance, page: () => WalletBalanceView()),
    GetPage(name: _Paths.helpnsupport, page: () => const HelpNSupport()),
    GetPage(
        name: _Paths.chatwithastrologer,
        page: () => const ChatWithAstrologer()),
    GetPage(name: _Paths.astrodetailsview, page: () => const AstroDetailView()),
    GetPage(name: _Paths.aboutus, page: () => const AboutUs()),
    GetPage(name: _Paths.privacypolicy, page: () => const PrivacyPolicy()),
    GetPage(
        name: _Paths.termsncondition, page: () => const TermsAndCondition()),
    GetPage(name: _Paths.faqs, page: () => const FAQs()),
    GetPage(name: _Paths.following, page: () => const Following()),
    GetPage(name: _Paths.directoryview, page: () => const DirectoryView()),
    GetPage(name: _Paths.refernearn, page: () => const ReferandEarn()),
    GetPage(name: _Paths.chatview, page: () => const ChatScreen()),
    GetPage(
        name: _Paths.directoryastrodetail, page: () => DirectoryAstroDetails()),
    GetPage(
        name: _Paths.profile, page: () => Profile(), binding: ProfileBinding()),
    GetPage(
        name: _Paths.homenav,
        page: () => const HomeNavBar(),
        binding: HomeNavBinding()),
    GetPage(
      name: _Paths.myorders,
      page: () => const MyOrders(),
      binding: MyOrdersBindings(),
    ),
    GetPage(
      name: _Paths.languageview,
      page: () => LanguageSelectView(),
      binding: LanguageBinding(),
    ),
  ];
}
