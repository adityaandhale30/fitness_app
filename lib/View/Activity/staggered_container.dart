import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:simple_waveform_progressbar/simple_waveform_progressbar.dart';

List<Container> staggeredContainer = [
  Container(
    height: 70,
    width: 122,
    padding: const EdgeInsets.all(8),
    margin: const EdgeInsets.only(bottom: 8, right: 2),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(250, 251, 249, 1),
      border: Border.all(color: const Color.fromRGBO(25, 33, 38, 0.1)),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Active Calories",
          style: GoogleFonts.lato(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(25, 33, 38, 0.5),
          ),
        ),
        Text(
          "645 Cal",
          style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(25, 33, 38, 1),
          ),
        ),
      ],
    ),
  ),
  Container(
    height: 222,
    width: 238,
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.only(left: 8),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(25, 33, 38, 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 28,
              width: 28,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Text(
              "Cycling",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(250, 251, 249, 1),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Image.asset("assets/images/map.png")
      ],
    ),
  ),
  Container(
    height: 136,
    width: 122,
    margin: const EdgeInsets.only(bottom: 8, right: 2, top: 8),
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(234, 236, 255, 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Text(
          "Training Time",
          style: GoogleFonts.lato(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: const Color.fromRGBO(25, 33, 38, 1),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        CircularPercentIndicator(
          radius: 37,
          lineWidth: 10,
          // fillColor: const Color.fromRGBO(164, 138, 237, 1),
          percent: 0.8,
          progressColor: const Color.fromRGBO(164, 138, 237, 1),
          backgroundColor: Colors.white,
          center: Text(
            "80%",
            style: GoogleFonts.lato(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(25, 33, 38, 1),
            ),
          ),
        )
      ],
    ),
  ),
  Container(
    height: 100,
    width: 160,
    margin: const EdgeInsets.only(left: 2, bottom: 8),
    padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(255, 232, 198, 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Container(
              height: 28,
              width: 28,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(248, 211, 157, 1),
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Icon(
                Icons.directions_run,
                color: Color.fromRGBO(134, 90, 25, 1),
              ),
            ),
            Text(
              "Steps",
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1)),
            ),
          ],
        ),
        Text(
          "999/2000",
          style: GoogleFonts.lato(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(25, 33, 38, 1)),
        ),
        LinearPercentIndicator(
          width: 111,
          padding: const EdgeInsets.only(right: 1),
          lineHeight: 16,
          percent: 0.49,
          barRadius: const Radius.circular(6),
          backgroundColor: const Color.fromRGBO(255, 237, 209, 1),
          progressColor: const Color.fromRGBO(252, 196, 111, 1),
        ),
      ],
    ),
  ),
  Container(
    height: 167,
    width: 199,
    padding: const EdgeInsets.only(top: 16, bottom: 8),
    margin: const EdgeInsets.only(right: 8),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(255, 235, 235, 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 28,
              width: 28,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(249, 185, 185, 1),
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Icon(
                Icons.monitor_heart_outlined,
                size: 24,
                color: Colors.red,
              ),
            ),
            Text(
              "Heart Rate",
              style: GoogleFonts.lato(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(25, 33, 38, 1),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: 91,
          width: 175,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
          ),
          child: WaveformProgressbar(
            color: Colors.grey,
            progressColor: Colors.red,
            progress: 1,
          ),
        ),
      ],
    ),
  ),
  Container(
    height: 50,
    width: 160,
    alignment: Alignment.center,
    margin: const EdgeInsets.only(left: 2, top: 8),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(246, 207, 207, 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Text(
      "Keep it UP! \u{1F4AA}",
      style: GoogleFonts.lato(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: const Color.fromRGBO(25, 33, 38, 1),
      ),
    ),
  ),
  Container(
    height: 128,
    width: 178,
    margin: const EdgeInsets.only(right: 8),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(239, 226, 255, 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 28,
              width: 28,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(214, 187, 248, 1),
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Icon(Icons.nights_stay_outlined,
                  color: Color.fromRGBO(61, 39, 90, 1)),
            ),
            Text(
              "Sleep",
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1)),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Image.asset("assets/images/sleep_bar.png")
      ],
    ),
  ),
  Container(
    height: 128,
    width: 176,
    margin: const EdgeInsets.only(left: 2),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(216, 230, 236, 1),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 28,
              width: 28,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(174, 209, 224, 1),
                borderRadius: BorderRadius.circular(3),
              ),
              child: const Icon(
                Icons.water_drop_outlined,
              ),
            ),
            Text(
              "Water",
              style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(25, 33, 38, 1)),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Image.asset("assets/images/water.png")
      ],
    ),
  ),
];
