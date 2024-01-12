import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:inclusi_careers/app/modules/home/home_controller.dart';
import 'package:inclusi_careers/app/widgets/card_job.dart';
import 'package:inclusi_careers/app/widgets/navigation_bottom.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        shadowColor: Colors.grey,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.only(top: 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/defaultProfile.png",
                    fit: BoxFit.contain,
                    height: 38,
                    width: 38,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF565656)),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                        // TextField(
                        //   // controller: controller.phoneC,
                        //   keyboardType: TextInputType.phone,
                        //   autocorrect: false,
                        //   decoration: InputDecoration(
                        //     border: OutlineInputBorder(),
                        //     hintText: "Email",
                        //   ),
                        // ),
                        Text("Search Jobs"),
                        SizedBox(
                          width: 50,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mic),
                          color: Colors.black,
                        )
                      ],
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      ) // Top part - Search bar and filters
      // Container(
      //   // You can adjust padding and size according to your design
      //   padding: EdgeInsets.all(8.0),
      //   child: Column(
      //     children: [
      //       // Add your search bar widget here
      //       // Add your filter widget here
      //     ],
      //   ),
      // ),
      ,
      body: Column(
        children: <Widget>[
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
