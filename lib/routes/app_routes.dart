part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const splash = _Paths.splash;
  static const login = _Paths.login;
  static const otpverification = _Paths.otpverification;
  static const home = _Paths.home;
  static const referview = _Paths.referview;
  static const languageview = _Paths.languageview;
  static const rechargeHistory = _Paths.rechargeHistory;
  static const walletBalance = _Paths.walletBalance;
}

abstract class _Paths {
  _Paths._();
  static const splash = '/splash';
  static const login = '/login';
  static const otpverification = '/otpverification';
  static const home = '/home';
  static const referview = '/referview';
  static const languageview = '/languageview';
  static const rechargeHistory = '/rechargeHistory';
  static const walletBalance = '/walletBalance';
}
