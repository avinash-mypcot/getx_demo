import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "statistics".tr,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("statistics".tr),
      ),
    );
  }
}
