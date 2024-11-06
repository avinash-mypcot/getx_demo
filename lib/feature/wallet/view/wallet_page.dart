import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "wallet".tr,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("wallet".tr),
      ),
    );
  }
}
