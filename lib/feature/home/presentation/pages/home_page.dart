import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/feature/posts/presentation/pages/posts_page.dart';
import '../../data/controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
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
          Get.to(() => const PostsPage());
        },
        child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10)),
            child: const Text(
              "Get Post",
              style: TextStyle(color: Colors.white),
            )),
      )),
    );
  }
}
