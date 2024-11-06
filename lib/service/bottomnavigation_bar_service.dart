import 'package:get/get.dart';

class BottomnavigationBarService extends GetxService {
  RxInt currentPage = 0.obs;
  RxBool isDarkTheme = false.obs;

  void goToTab(int page) {
    currentPage.value = page;
  }
}
