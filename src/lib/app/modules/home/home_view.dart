import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:inclusi_careers/app/modules/home/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 150,
                  child: Image.asset(
                    "assets/logo/logo-login.png",
                    fit: BoxFit.contain,
                  ),
                )
              ],
            )));
  }
}
