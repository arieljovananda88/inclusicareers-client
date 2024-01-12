import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:inclusi_careers/app/modules/home/home_controller.dart';
import 'package:inclusi_careers/app/routes/app_pages.dart';
import 'package:inclusi_careers/app/widgets/card_job.dart';
import 'package:inclusi_careers/app/widgets/navigation_bottom.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Top part - Search bar and filters
          Container(
            // You can adjust padding and size according to your design
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                // Add your search bar widget here
                // Add your filter widget here
              ],
            ),
          ),

          // Middle part - Scrollable job list
          Expanded(
            child: ListView.builder(
              itemCount: 20, // Replace with your actual item count
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  child: CardJob(),
                );
              },
            ),
          ),
        ],
      ),
      // Bottom part - Navigation bar
      bottomNavigationBar: NavigationBottom(selectedIndex: currentIndex),
    );
  }
}
