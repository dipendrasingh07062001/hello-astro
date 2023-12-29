import 'dart:ui';
import 'package:get/get.dart';

class LanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguageController>(() => LanguageController());
  }
}

class LanguageController extends GetxController {
  RxBool isLoading = false.obs;
  RxString selectedlanguage = "".obs;
  List languages = [
    {"language": "English", "local": const Locale('en', 'US')},
    {"language": "हिंदी", "local": const Locale('hi', 'IN')},
  ];
  selectlang(int index) {
    selectedlanguage.value = languages[index]["language"];
    Get.updateLocale(languages[index]["local"]);
  }
}
