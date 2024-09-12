import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 8, 9),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromARGB(255, 8, 11, 12),
        title: Text(
          "Workout",
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.3,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(23)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: ShaderMask(
                      //blendMode: BlendMode.softLight,
                      shaderCallback: (bounds) {
                        return const LinearGradient(
                          stops: [0, 0.4],
                          colors: [
                            Color.fromRGBO(103, 98, 98, 1),
                            Color.fromRGBO(248, 244, 244, 1),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ).createShader(bounds);
                      },
                      child: Image.asset(
                        "assets/images/workout.png",
                        fit: BoxFit.contain,
                        width: 270,
                        height: 164,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  left: 258 / 4,
                  child: Container(
                    width: 258,
                    height: 64,
                    padding: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(25, 33, 38, 0.3),
                          Color.fromRGBO(25, 33, 38, 0.1),
                          Color.fromRGBO(25, 33, 38, 0.4),
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(187, 242, 70, 1),
                          ),
                          child: const Icon(
                            Icons.alarm_outlined,
                            color: Color.fromRGBO(25, 29, 26, 1),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time",
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "20 min",
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(187, 242, 70, 1),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: VerticalDivider(),
                        ),
                        Container(
                          height: 32,
                          width: 32,
                          margin: const EdgeInsets.only(left: 8, right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(187, 242, 70, 1),
                          ),
                          child: const Icon(
                            Icons.whatshot_outlined,
                            color: Color.fromRGBO(25, 29, 26, 1),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Burn",
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "95 kcal",
                              style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(187, 242, 70, 1),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 46,
            ),
            Text(
              "Lower Body Training",
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don't use tools.",
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rounds",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "1/8",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, idx) {
                  return Container(
                    width: 350,
                    height: 74,
                    padding: const EdgeInsets.only(left: 8, right: 16),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 64, 70, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset("assets/images/work$idx.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jumping Jacks",
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "00:30",
                              style: GoogleFonts.lato(
                                fontSize: 13,
                                color: const Color.fromRGBO(255, 255, 255, 0.5),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 36,
                          width: 36,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(25, 33, 38, 1),
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Color.fromRGBO(187, 242, 70, 1),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 60,
        width: screenWidth,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: const Color.fromRGBO(187, 242, 70, 1),
        ),
        child: Text(
          "Lets Workout",
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(25, 33, 38, 1),
          ),
        ),
      ),
    );
  }
}
