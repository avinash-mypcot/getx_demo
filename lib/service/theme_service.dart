
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeService extends GetxService {
  RxBool isDarkTheme = false.obs;

  void changeTheme() {
    Get.changeTheme(isDarkTheme.value ? ThemeData.light() : ThemeData.dark());
    isDarkTheme.value = !isDarkTheme.value;
  }
}
