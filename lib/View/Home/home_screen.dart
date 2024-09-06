import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 250, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// unicode value for lit emoji
            Text(
              "Good Morning \u{1F525}",
              style: GoogleFonts.lato(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
            Text(
              "Pramuditya Uzumaki",
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(255, 255, 255, 1),
                filled: true,
                hintText: "Search",
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: Color.fromRGBO(25, 33, 38, 0.5),
                ),
                hintStyle: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(25, 33, 38, 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Popular Workouts",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 178,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, idx) {
                    return Container(
                      height: 174,
                      width: 280,
                      margin: const EdgeInsets.only(right: 26),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 174,
                            width: 280,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: ShaderMask(
                                //blendMode: BlendMode.softLight,
                                shaderCallback: (bounds) {
                                  return const LinearGradient(
                                    stops: [0.3, 1],
                                    colors: [
                                      Color.fromRGBO(115, 115, 115, 1),
                                      Color.fromRGBO(255, 255, 255, 0.514),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ).createShader(bounds);
                                },
                                child: Image.asset(
                                  "assets/images/homeH1.png",
                                  fit: BoxFit.contain,
                                  width: 270,
                                  height: 164,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Lower Body\nTraining",
                                      style: GoogleFonts.lato(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1)),
                                    ),
                                    Container(
                                      height: 26,
                                      width: 80,
                                      margin: const EdgeInsets.only(top: 12),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 0.8),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.whatshot,
                                            color:
                                                Color.fromRGBO(25, 33, 38, 1),
                                          ),
                                          Text(
                                            "500 Kcal",
                                            style: GoogleFonts.lato(
                                              fontSize: 12,
                                              color: const Color.fromRGBO(
                                                  25, 33, 38, 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 26,
                                      width: 80,
                                      margin: const EdgeInsets.only(top: 12),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color.fromRGBO(
                                            255, 255, 255, 0.8),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.alarm_outlined,
                                            color:
                                                Color.fromRGBO(25, 33, 38, 1),
                                          ),
                                          Text(
                                            "50 Min",
                                            style: GoogleFonts.lato(
                                              fontSize: 12,
                                              color: const Color.fromRGBO(
                                                  25, 33, 38, 1),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 38,
                                  width: 38,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(187, 242, 70, 1)),
                                  child: const Icon(
                                    Icons.play_arrow_rounded,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Today Plan",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, idx) {
                  return badges.Badge(
                    //stackFit: StackFit.passthrough,
                    position: badges.BadgePosition.topEnd(top: 18, end: 42),
                    badgeStyle: const badges.BadgeStyle(
                      shape: badges.BadgeShape.square,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      badgeColor: Color.fromRGBO(25, 33, 38, 1),
                    ),
                    badgeContent: Container(
                      alignment: Alignment.center,
                      height: 19,
                      width: 81,
                      child: Text(
                        "Beginner",
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    child: Container(
                      height: 120,
                      width: 350,
                      margin: const EdgeInsets.only(top: 16),
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            margin: const EdgeInsets.only(right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                "assets/images/plan$idx.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(),
                              Text(
                                "Today Plan",
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 33, 38, 1),
                                ),
                              ),
                              Text(
                                "100 Push up a day",
                                style: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: const Color.fromRGBO(25, 33, 38, 0.5),
                                ),
                              ),
                              LinearPercentIndicator(
                                width: 188,
                                padding: const EdgeInsets.only(right: 1),
                                lineHeight: 16,
                                percent: 0.75,
                                barRadius: const Radius.circular(6),
                                backgroundColor:
                                    const Color.fromRGBO(242, 242, 242, 1),
                                progressColor:
                                    const Color.fromRGBO(187, 242, 70, 1),
                                center: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 200 *
                                            (0.75) /
                                            2), // Calculate position
                                    child: Text(
                                      "75 %",
                                      style: GoogleFonts.lato(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            const Color.fromRGBO(25, 33, 38, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: PersistentTabView(
        backgroundColor: const Color.fromRGBO(25, 33, 38, 1),
        navBarStyle: NavBarStyle.style1,
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.transparent,
          borderRadius: BorderRadius.circular(32),
        ),
        context,
        screens: [Container(), Container(), Container(), Container()],
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            activeColorPrimary: Color.fromARGB(255, 175, 255, 4),
            activeColorSecondary: Colors.red,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home_filled),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home_filled),
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home_filled),
          ),
        ],
      ),
    );
  }
}
