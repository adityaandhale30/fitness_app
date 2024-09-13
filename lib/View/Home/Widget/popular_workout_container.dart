import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularWorkoutContainer extends StatelessWidget {
  const PopularWorkoutContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
            );
  }
}
