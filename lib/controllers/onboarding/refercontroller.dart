import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReferController extends GetxController {
  TextEditingController referController = TextEditingController();
  RxBool isLoading = false.obs;
}
