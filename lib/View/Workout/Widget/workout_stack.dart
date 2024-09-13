import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutStack extends StatelessWidget {
  const WorkoutStack({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: screenWidth,
          height: screenHeight * 0.3,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(23)),
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
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Text(
                      "20 min",
                      style: GoogleFonts.roboto(
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
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Text(
                      "95 kcal",
                      style: GoogleFonts.roboto(
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
    );
  }
}
