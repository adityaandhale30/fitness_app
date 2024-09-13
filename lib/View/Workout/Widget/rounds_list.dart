import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundsList extends StatelessWidget {
  const RoundsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "00:30",
                              style: GoogleFonts.roboto(
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
            );
  }
}