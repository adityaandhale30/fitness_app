import 'package:fitness_app/View/Home/Widget/popular_workout_container.dart';
import 'package:fitness_app/View/Home/Widget/todayPlan_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 250, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// unicode value for lit emoji
            Text(
              "Good Morning \u{1F525}",
              style: GoogleFonts.lato(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
            Text(
              "Pramuditya Uzumaki",
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(255, 255, 255, 1),
                filled: true,
                hintText: "Search",
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  color: Color.fromRGBO(25, 33, 38, 0.5),
                ),
                hintStyle: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(25, 33, 38, 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Popular Workouts",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
           const PopularWorkoutContainer()
            ,const SizedBox(
              height: 20,
            ),
            Text(
              "Today Plan",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
            const TodaysPlanContainer(),
          ],
        ),
      ),
     
    );
  }
}
