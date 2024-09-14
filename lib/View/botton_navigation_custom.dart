import 'package:fitness_app/Controllers/bottomNavigationBarController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarController controller =
        Get.put(BottomNavigationBarController());

    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
          left: 4,
          right: 4,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(34),
          child: GNav(
            backgroundColor: const Color.fromRGBO(25, 33, 38, 1),
            curve: Curves.easeIn,
            iconSize: 24,
            onTabChange: (value) {
              controller.selectedIndex.value = value;
            },
            tabs: const [
              GButton(
                active: true,
                text: " Home",
                icon: Icons.home,
                iconColor: Colors.white,
                iconActiveColor: Colors.black,
                backgroundColor: Color.fromRGBO(187, 242, 70, 1),
                padding:
                    EdgeInsets.only(top: 14, bottom: 14, left: 24, right: 24),
                margin: EdgeInsets.all(8),
              ),
              GButton(
                active: true,
                text: " Explore",
                icon: Icons.rocket_launch_outlined,
                iconColor: Colors.white,
                iconActiveColor: Colors.black,
                backgroundColor: Color.fromRGBO(187, 242, 70, 1),
                padding:
                    EdgeInsets.only(top: 14, bottom: 14, left: 24, right: 24),
              ),
              GButton(
                active: true,
                text: " Analytics",
                icon: Icons.analytics_outlined,
                iconColor: Colors.white,
                iconActiveColor: Colors.black,
                backgroundColor: Color.fromRGBO(187, 242, 70, 1),
                padding:
                    EdgeInsets.only(top: 14, bottom: 14, left: 24, right: 24),
                // margin: EdgeInsets.all(8),
              ),
              GButton(
                active: true,
                text: " Profile",
                icon: Icons.person_2_outlined,
                iconColor: Colors.white,
                iconActiveColor: Colors.black,
                backgroundColor: Color.fromRGBO(187, 242, 70, 1),
                padding:
                    EdgeInsets.only(top: 14, bottom: 14, left: 24, right: 24),
                margin: EdgeInsets.only(right: 8),
              ),
            ],
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
