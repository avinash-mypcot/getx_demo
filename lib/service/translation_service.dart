
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationService extends GetxService {

  void changeLocale(String langCode,String countryCode){
      var locale = Locale(langCode, countryCode);
      Get.updateLocale(locale);
  }
}