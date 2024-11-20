import 'dart:developer';

import 'package:fitness_app/View/Explore/Widgets/bestForYou_container.dart';
import 'package:fitness_app/View/Explore/Widgets/carusual_container.dart';
import 'package:fitness_app/View/Explore/Widgets/challenge_containe.dart';
import 'package:fitness_app/View/Explore/Widgets/warmup_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    log(MediaQuery.of(context).size.width.toString());
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 250, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 26, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CarouselContainer(),
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
              const BestForYouContainer(),
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
              const ChallengeContainer(),
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
              const WormUpContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
