import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_demo/feature/posts/view/posts_page.dart';

class HomePage extends GetView {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          Get.to(() =>  PostsPage());
        },
        child: Container(
            padding:  EdgeInsets.all(16.h),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Get Post",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp),
            )),
      )),
    );
  }
}
