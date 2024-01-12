// custom_bottom_navigation.dart

import 'package:flutter/material.dart';

class NavigationBottom extends StatelessWidget {
  final int selectedIndex;

  const NavigationBottom({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(20.0),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Theme(
              data: ThemeData(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  shadowColor: Colors.black),
              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                selectedItemColor: const Color(0xFFED4F2C),
                unselectedItemColor: const Color(0xFF7F7F7F),
                showSelectedLabels: true,
                showUnselectedLabels: true,
                selectedFontSize: 14,
                unselectedFontSize: 14,
                iconSize: 30,
                elevation: 0,
                onTap: (index) {
                  // Handle navigation tap
                  switch (index) {
                    case 0:
                      // Navigate to home
                      break;
                    case 1:
                      // Navigate to community
                      break;
                    // Handle other cases for each tab
                  }
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.group),
                    label: 'Community',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    label: 'History',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              )),
        ));
  }
}
