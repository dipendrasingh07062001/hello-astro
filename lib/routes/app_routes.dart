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
  static const myorders = _Paths.myorders;
  static const helpnsupport = _Paths.helpnsupport;
  static const chatwithastrologer = _Paths.chatwithastrologer;
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
  static const myorders = '/myorders';
  static const helpnsupport = '/helpnsupport';
  static const chatwithastrologer = '/chatwithastrologer';
}
