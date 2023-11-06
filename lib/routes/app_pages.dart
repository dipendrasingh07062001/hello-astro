import 'package:get/get.dart';
import 'package:hello_astro_user/views/home/homeview.dart';
import 'package:hello_astro_user/views/onboading/loginview.dart';
import 'package:hello_astro_user/views/onboading/otpverification.dart';
import 'package:hello_astro_user/views/onboading/splash.dart';
part './app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.home;
  static final routes = [
    GetPage(name: _Paths.splash, page: () => Splash()),
    GetPage(name: _Paths.login, page: () => Login()),
    GetPage(name: _Paths.otpverification, page: () => OtpVerfication()),
    GetPage(name: _Paths.home, page: () => HomeView()),
  ];
}
