import 'package:hello_astro_user/utils/imageslink.dart';

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
    {"name": "Aries", "image": AppImages.horoscrope1},
    {"name": "Taurus", "image": AppImages.horoscrope2},
    {"name": "Gemini", "image": AppImages.horoscrope3},
    {"name": "Leo", "image": AppImages.horoscrope4},
    {"name": "Virgo", "image": AppImages.horoscrope5},
    {"name": "Libra", "image": AppImages.horoscrope6},
    {"name": "Scorpio", "image": AppImages.horoscrope7},
    {"name": "Sagittarius", "image": AppImages.horoscrope8},
    {"name": "Capricorn", "image": AppImages.horoscrope9},
    {"name": "Aquarius", "image": AppImages.horoscrope10},
    {"name": "Picses", "image": AppImages.horoscrope11},
    {"name": "Cancer", "image": AppImages.horoscrope12}
  ];
  static List<Sunshine> get sunshines =>
      List<Sunshine>.from(data.map((e) => Sunshine.fromjson(e)));
}
