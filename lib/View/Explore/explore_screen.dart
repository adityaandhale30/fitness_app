import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 250, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 35 / 18,
                  viewportFraction: 1,
                  enlargeCenterPage: true,
                ),
                items: [1, 2].map((i) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(24)),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 200,
                          child: ShaderMask(
                            //   blendMode: BlendMode.dst,
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
                              "assets/images/explore_car1.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Best Quarantine\nWorkout",
                            style: GoogleFonts.lato(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 16,
                          bottom: 20,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "See more > ",
                              style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  color: const Color.fromRGBO(187, 242, 70, 1)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Best for you",
                style: GoogleFonts.lato(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 210,
                width: double.maxFinite,
                child: GridView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.5,
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, idx) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                margin: const EdgeInsets.only(right: 8),
                                child: Image.asset(
                                  "assets/images/explore_grid$idx.png",
                                  fit: BoxFit.fill,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Belly fat burner",
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromRGBO(25, 33, 38, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    padding: const EdgeInsets.only(
                                        left: 4, right: 4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: const Color.fromRGBO(
                                            241, 241, 241, 1)),
                                    child: Text(
                                      "10 min",
                                      style: GoogleFonts.lato(
                                        fontSize: 14,
                                        color: const Color.fromRGBO(
                                            25, 33, 38, 0.7),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                    child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: const Color.fromRGBO(
                                          241, 241, 241, 1)),
                                  child: Text(
                                    "Beginner",
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color:
                                          const Color.fromRGBO(25, 33, 38, 0.7),
                                    ),
                                  ),
                                )),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Challenge",
                style: GoogleFonts.lato(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, idx) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        height: 110,
                        width: 110,
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: const Color.fromRGBO(187, 242, 70, 1),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Image.asset(
                              "assets/images/explore_ch$idx.png",
                              color: Colors.white,
                            ),
                            Positioned(
                              left: 0,
                              bottom: 0,
                              child: Text(
                                "Plank\nChallenge",
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromRGBO(25, 33, 38, 1),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Fast Warmup",
                style: GoogleFonts.lato(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, idx) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                margin: const EdgeInsets.only(right: 8),
                                child: Image.asset(
                                  "assets/images/explore_wp$idx.png",
                                  fit: BoxFit.cover,
                                )),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Leg excercises",
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromRGBO(25, 33, 38, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 8),
                                    padding: const EdgeInsets.only(
                                        left: 4, right: 4),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        color: const Color.fromRGBO(
                                            241, 241, 241, 1)),
                                    child: Text(
                                      "10 min",
                                      style: GoogleFonts.lato(
                                        fontSize: 14,
                                        color: const Color.fromRGBO(
                                            25, 33, 38, 0.7),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                    child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: const Color.fromRGBO(
                                          241, 241, 241, 1)),
                                  child: Text(
                                    "Beginner",
                                    style: GoogleFonts.lato(
                                      fontSize: 14,
                                      color:
                                          const Color.fromRGBO(25, 33, 38, 0.7),
                                    ),
                                  ),
                                )),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
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
      ),
    );
  }
}
