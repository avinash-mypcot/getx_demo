import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_demo/translation/translation_string.dart';
import 'service/network_service.dart';
import 'service/theme_service.dart';
import 'service/translation_service.dart';
import 'core/routes/app_pages.dart';

void main() {
  Get.put<NetworkService>(NetworkService());
  Get.put<ThemeService>(ThemeService());
  Get.put<TranslationService>(TranslationService());
  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            // initialBinding: InitBinding(),
            translations: TranslationString(),
            locale: const Locale("en","US"),
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }),
  );
}
