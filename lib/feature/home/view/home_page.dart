import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_demo/service/network_service.dart';
import 'package:getx_demo/feature/posts/view/posts_page.dart';
import 'package:getx_demo/service/theme_service.dart';

import '../../../service/translation_service.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final service = Get.find<ThemeService>();
  final selectedLanguage = ''.obs; // Observable to store selected language

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home'.tr,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        actions: [
          Obx(() {
            return Row(
              children: [
                DropdownButton<String>(
                  value: selectedLanguage.value.isNotEmpty
                      ? selectedLanguage.value
                      : Get.locale?.languageCode == 'hi'
                          ? 'Hindi'
                          : 'English',
                  icon: const Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  underline: Container(),
                  dropdownColor: Colors.blueGrey,
                  style: const TextStyle(color: Colors.white), // Text color
                  items: const [
                    DropdownMenuItem(
                      value: 'English',
                      child: Text("English"),
                    ),
                    DropdownMenuItem(
                      value: 'Hindi',
                      child: Text("Hindi"),
                    ),
                  ],
                  onChanged: (value) {
                    selectedLanguage.value = value ?? 'English';
                    // Change locale based on selection
                    if (selectedLanguage.value == 'Hindi') {
                      Get.find<TranslationService>().changeLocale("hi", "IN");
                    } else {
                      Get.find<TranslationService>().changeLocale("en", "US");
                    }
                  },
                ),
                SizedBox(
                  width: 5.w,
                ),
                SizedBox(
                  height: 30.h,
                  width: 45.w,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Switch(
                      activeTrackColor: Colors.white,
                      activeColor: Colors.white,
                      thumbColor: const WidgetStatePropertyAll(Colors.blueGrey),
                      value: !service.isDarkTheme.value,
                      onChanged: (s) {
                        service.changeTheme();
                      },
                    ),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            var value = Get.find<NetworkService>();
            if (value.result[0] != ConnectivityResult.none) {
              Get.to(() => PostsPage());
            } else {
              Get.rawSnackbar(
                messageText: const Text(
                  'PLEASE CONNECT TO THE INTERNET',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                backgroundColor: Colors.red[400]!,
                icon: const Icon(
                  Icons.wifi_off,
                  color: Colors.white,
                  size: 35,
                ),
                margin: EdgeInsets.zero,
                snackStyle: SnackStyle.GROUNDED,
              );
            }
          },
          child: Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "get_post".tr,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
