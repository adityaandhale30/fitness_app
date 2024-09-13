import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestForYouContainer extends StatelessWidget {
  const BestForYouContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
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
              );
  }
}
