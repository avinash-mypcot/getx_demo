import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_demo/feature/home/view/home_page.dart';
import 'package:getx_demo/feature/profile/view/profile_page.dart';
import 'package:getx_demo/feature/statistics/view/statistics_page.dart';
import 'package:getx_demo/feature/wallet/view/wallet_page.dart';
import 'package:getx_demo/service/bottomnavigation_bar_service.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

// ignore: must_be_immutable
class CustomBottomnavigationBar extends StatelessWidget {
  CustomBottomnavigationBar({super.key});

  final BottomnavigationBarService _bottomnavigationBarService =
      Get.find<BottomnavigationBarService>();

  List<Widget> pages = [
    HomePage(),
    const WalletPage(),
    const StatisticsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomAppBarItem(
                    icon: Icons.home,
                    page: 0,
                    context,
                    label: "home".tr,
                  ),
                  _bottomAppBarItem(
                      icon: Icons.wallet, page: 1, context, label: "wallet".tr),
                  _bottomAppBarItem(
                      icon: Icons.pie_chart,
                      page: 2,
                      context,
                      label: "statistics".tr),
                  _bottomAppBarItem(
                      icon: Icons.person,
                      page: 3,
                      context,
                      label: "profile".tr),
                ],
              ),
            ),
          ),
        ),
        body: Obx(() {
          return
          //  pages[_bottomnavigationBarService.currentPage.value];
          IndexedStack(
            index: _bottomnavigationBarService.currentPage.value,
            children: pages,
          );
        }));
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required label}) {
    return ZoomTapAnimation(
      onTap: () => _bottomnavigationBarService.goToTab(page),
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: _bottomnavigationBarService.currentPage == page
                  ? Colors.green
                  : Colors.grey,
              size: 20.sp,
            ),
            Text(
              label,
              style: TextStyle(
                  color: _bottomnavigationBarService.currentPage == page
                      ? Colors.green
                      : Colors.grey,
                  fontSize: 13.sp,
                  fontWeight: _bottomnavigationBarService.currentPage == page
                      ? FontWeight.w600
                      : null),
            ),
          ],
        ),
      ),
    );
  }
}
