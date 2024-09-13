import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TodaysPlanContainer extends StatelessWidget {
  const TodaysPlanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, idx) {
          return badges.Badge(
            //stackFit: StackFit.passthrough,
            position: badges.BadgePosition.topEnd(top: 18, end: 16),
            badgeStyle: const badges.BadgeStyle(
              shape: badges.BadgeShape.square,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              badgeColor: Color.fromRGBO(25, 33, 38, 1),
            ),
            badgeContent: Container(
              alignment: Alignment.center,
              height: 19,
              width: 81,
              child: Text(
                "Beginner",
                style: GoogleFonts.lato(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            child: Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(top: 16),
              // padding: const EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        "assets/images/plan$idx.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(),
                      Text(
                        "Today Plan",
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(25, 33, 38, 1),
                        ),
                      ),
                      Text(
                        "100 Push up a day",
                        style: GoogleFonts.lato(
                          fontSize: 14,
                          color: const Color.fromRGBO(25, 33, 38, 0.5),
                        ),
                      ),
                      LinearPercentIndicator(
                        width: 188,
                        padding: const EdgeInsets.only(right: 1),
                        lineHeight: 16,
                        percent: 0.75,
                        barRadius: const Radius.circular(6),
                        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
                        progressColor: const Color.fromRGBO(187, 242, 70, 1),
                        center: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 200 * (0.75) / 2), // Calculate position
                            child: Text(
                              "75 %",
                              style: GoogleFonts.lato(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(25, 33, 38, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
