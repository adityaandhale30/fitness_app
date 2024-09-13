import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WormUpContainer extends StatelessWidget {
  const WormUpContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
              );
  }
}