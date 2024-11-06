import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "profile".tr,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("profile".tr),
      ),
    );
  }
}
