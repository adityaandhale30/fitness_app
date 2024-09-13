import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallengeContainer extends StatelessWidget {
  const ChallengeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
              );
  }
}
