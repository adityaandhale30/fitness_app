import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: const GNav(
          backgroundColor: Color.fromRGBO(25, 33, 38, 1),
          curve: Curves.easeIn,
          iconSize: 24,
          tabs: [
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
      );
  }
}