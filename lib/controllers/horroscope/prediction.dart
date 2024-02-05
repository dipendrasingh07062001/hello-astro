import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_astro_user/services/localization/keywords.dart';
import 'package:intl/intl.dart';

import '../../api/apiconstants.dart';
import '../../api/apiservices.dart';
import '../../models/horroscope/prediction.dart';

class PredictionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PredictionController());
  }
}

class PredictionController extends GetxController {
  @override
  void onInit() {
    zodiac = Get.arguments;
    print(zodiac);

    // getPredition();
    super.onInit();
  }

  int zodiac = 0;

  Rxn<Prediction> prediction = Rxn<Prediction>();
  RxBool isloading = false.obs;
  RxString dob = "".obs;
  TextEditingController yearController = TextEditingController(text: "0");
  List category = [
    {"name": "Daily Sun", "key": "daily-sun"},
    {"name": "Daily Moon", "key": "daily-moon"},
    // {"name": "Daily Nakshatra", "key": "daily-nakshatra"},
    {"name": "Weekly Sun", "key": "weekly-sun"},
    {"name": "Weekly Moon", "key": "weekly-moon"},
    {"name": "Yearly", "key": "yearly"},
    // {"name": "Biorhythm", "key": "biorhythm"},
    // {"name": "Day-number", "key": "day-number"},
    // {"name": "Numerology", "key": "numerology"},
  ];
  List language = [
    {"name": "English", "key": "en"},
    {"name": "Hindi", "key": "hi"},
  ];
  RxMap selectedLanguage = {}.obs;
  RxMap selectedcategory = {}.obs;

  // List zodiac = [
  //   Words.Aries,
  //   Words.Taurus,
  //   Words.Gemini,
  //   Words.Cancer,
  //   Words.Leo,
  //   Words.Virgo,
  //   Words.Libra,
  //   Words.Scorpio,
  //   Words.Sagittarius,
  //   Words.Capricorn,
  //   Words.Aquarius,
  //   Words.Pisces
  // ];
  RxString selectedweek = "".obs;
  getPredition() async {
    String date = DateFormat("dd/MM/yyyy").format(DateTime.now());
    String apiKey = "b3dd9392-6678-505e-9e1d-13ef1d69919c";
    String lang = selectedLanguage["key"] ?? "";
    String params = "";
    String url = "";
    if (selectedcategory["key"] == "daily-sun" ||
        selectedcategory["key"] == "daily-moon") {
      if (date.isEmpty) return;
      if (lang.isEmpty) return;
      params =
          "?split=true&type=big&lang=$lang&date=$date&zodiac=$zodiac&api_key=$apiKey";
      url = ApiUrls.pridiction + selectedcategory["key"] + params;
    } else if (selectedcategory["key"] == "weekly-sun" ||
        selectedcategory["key"] == "weekly-moon") {
      if (selectedweek.value.isEmpty) return;
      if (lang.isEmpty) return;
      params =
          "?split=true&type=big&lang=$lang&week${selectedweek.value}&zodiac=$zodiac&api_key=$apiKey";
      url = ApiUrls.pridiction + selectedcategory["key"] + params;
    } else if (selectedcategory["key"] == "yearly") {
      String year = yearController.text;
      if (year.isEmpty) return;
      if (year.length != 4) return;
      params = "?lang=$lang&zodiac=$zodiac&api_key=$apiKey&year=$year";
      url = ApiUrls.pridiction + selectedcategory["key"] + params;
    } else {
      return;
    }
    print("====$url");

    ApiClient apiClient = ApiClient();
    isloading.value = true;
    await apiClient.getRequest(url).then((value) {
      if (value != null) {
        print(value);
        isloading.value = false;
        return;
      }
      isloading.value = false;
      return;
    });
    isloading.value = false;
  }
}
