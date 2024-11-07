// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class ThemeService extends GetxService {
//   RxBool isDarkTheme = false.obs;

//   void changeTheme() {
//     Get.changeTheme(isDarkTheme.value ? ThemeData.light() : ThemeData.dark());
//     isDarkTheme.value = !isDarkTheme.value;
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService extends  GetxService {
  final box = GetStorage();
  RxBool isDarkTheme = false.obs;
  bool get isDark {
    isDarkTheme.value = box.read('darkmode') ?? false;
    return box.read('darkmode') ?? false;
  }

  ThemeData get theme => isDark ? ThemeData.light() : ThemeData.dark();
  void changeTheme(bool val) {
    isDarkTheme.value = val;
    box.write('darkmode', val);
    if (val) {
      Get.changeTheme(ThemeData.light());
    } else {
      Get.changeTheme(ThemeData.dark());
    }
  }
}
