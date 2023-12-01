import 'package:get/get.dart';
import 'package:hello_astro_user/utils/imageslink.dart';

extension ScreenUtil on double {
  double get h => Get.height * (this / 100);
  double get w => Get.width * (this / 100);
}

List<Map<String, String>> get socialmedialist => [
      {
        "image": AppImages.facebook,
        "link": "",
      },
      {
        "image": AppImages.instagram,
        "link": "",
      },
      {
        "image": AppImages.youtube,
        "link": "",
      },
      {
        "image": AppImages.twitter,
        "link": "",
      },
      {
        "image": AppImages.linkenin,
        "link": "",
      },
    ];
