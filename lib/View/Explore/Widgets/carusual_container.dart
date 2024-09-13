import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselContainer extends StatelessWidget {
  const CarouselContainer({super.key});
  

  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  CarouselSlider(
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
                          height: screenHeight * 0.225,
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
              );
  }
}
