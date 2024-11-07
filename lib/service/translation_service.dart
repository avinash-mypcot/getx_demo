import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslationService extends GetxService {
  final box = GetStorage();
  Locale get getLocale => Locale(box.read("locale")) ?? Locale('en_IN');

  void changeLocale(String langCode, String countryCode) {
    var locale = Locale(langCode, countryCode);
    box.write("locale", "${langCode}_$countryCode");
    log("${box.read("locale")}");
    Get.updateLocale(locale);
  }
}
