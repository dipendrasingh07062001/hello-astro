import 'dart:io';
import 'services/localization/keywords.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/api/preference.dart';
import 'package:hello_astro_user/routes/app_pages.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:hello_astro_user/services/localization/language.dart';
import 'package:hello_astro_user/services/notification/service.dart';
import 'package:hello_astro_user/theme/themedata.dart';
import 'package:hello_astro_user/utils/nevugationservices.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DefaultFirebaseOptions.init();
  // await NotificationServices().initNotifications();
  await Preference.getInstance();
  if (Platform.isAndroid) {
    await NotificationServices().init();
  }
  await SystemChrome.setPreferredOrientations(
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
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      title: "Hello Astro User",
      translations: LanguageClass(),
      locale:
          Preference.getString(PreferenceConstants.language).languageValue() ==
                  Language.english
              ? const Locale('en', 'US')
              : const Locale('hi', 'IN'),
      fallbackLocale: const Locale('en', 'US'),
      navigatorKey: NavigationServices.navigatorKey,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: AppThemeData.appTheme,
    );
  }
}

extension on Language {
  String stringValue() {
    switch (this) {
      case Language.hindi:
        return "हिंदी";
      case Language.english:
        return "English";
    }
  }
}

extension on String {
  Language languageValue() {
    switch (this) {
      case "हिंदी":
        return Language.hindi;
      case "English":
        return Language.english;
      default:
        return Language.english;
    }
  }
}
