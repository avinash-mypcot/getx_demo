import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/translation/translation_string.dart';
import 'service/network_service.dart';
import 'service/theme_service.dart';
import 'service/translation_service.dart';
import 'core/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  Get.put<NetworkService>(NetworkService());
  final controller = Get.put(ThemeService());
  final translateController = Get.put<TranslationService>(TranslationService());
  
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          theme: controller.theme,
          translations: TranslationString(),
          locale: translateController.getLocale,
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        );
      },
    ),
  );
}
