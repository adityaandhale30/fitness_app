import 'package:fitness_app/View/Activity/staggered_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HorizontalCalendar(
            //   date: DateTime.now(),
            //   textColor: Colors.black45,
            //   backgroundColor: Colors.white,
            //   selectedColor: Colors.blue,
            //   showMonth: true,
            //   onDateSelected: (date) {},
            // ),
            const SizedBox(
              height: 150,
            ),
            Text(
              "Today Report",
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1)),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    staggeredContainer[0],
                    staggeredContainer[2],
                  ],
                ),
                staggeredContainer[1],
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                staggeredContainer[4],
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    staggeredContainer[3],
                    staggeredContainer[5],
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                staggeredContainer[6],
                staggeredContainer[7],
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(44),
        child: const GNav(
          duration: Duration(milliseconds: 300),
          backgroundColor: Color.fromRGBO(25, 33, 38, 1),
          curve: Curves.easeOutExpo,
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
      ),
    );
  }
}
