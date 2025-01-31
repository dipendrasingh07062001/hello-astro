import 'package:hello_astro_user/utils/imageslink.dart';

import '../services/localization/keywords.dart';

class Sunshine {
  String name = "";
  String image = "";
  Sunshine({this.name = "", this.image = ""});
  factory Sunshine.fromjson(Map<String, String> json) => Sunshine(
        name: json["name"] ?? "",
        image: json["image"] ?? "",
      );
}

class SunshineData {
  static const List<Map<String, String>> data = [
    {"name": Words.Aries, "image": AppImages.horoscrope1},
    {"name": Words.Taurus, "image": AppImages.horoscrope2},
    {"name": Words.Gemini, "image": AppImages.horoscrope3},
    {"name": Words.Leo, "image": AppImages.horoscrope4},
    {"name": Words.Virgo, "image": AppImages.horoscrope5},
    {"name": Words.Libra, "image": AppImages.horoscrope6},
    {"name": Words.Scorpio, "image": AppImages.horoscrope7},
    {"name": Words.Sagittarius, "image": AppImages.horoscrope8},
    {"name": Words.Capricorn, "image": AppImages.horoscrope9},
    {"name": Words.Aquarius, "image": AppImages.horoscrope10},
    {"name": Words.Pisces, "image": AppImages.horoscrope11},
    {"name": Words.Cancer, "image": AppImages.horoscrope12}
  ];
  static List<Sunshine> get sunshines =>
      List<Sunshine>.from(data.map((e) => Sunshine.fromjson(e)));
}
