import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/api/preference.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/utils/nevugationservices.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Preference.getInstance();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello Astro User",
      navigatorKey: NavigationServices.navigatorKey,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: AppThemeData.appTheme,
    );
  }
}
