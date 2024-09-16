import 'package:fitness_app/View/botton_navigation_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                colors: [Color.fromRGBO(255, 255, 255, 0), Colors.white],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ).createShader(bounds);
            },
            child: SizedBox(
              height: screenHeight / 1.5,
              width: screenWidth,
              child: Image.asset(
                "assets/images/splash.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            "   Wherever you are\nhealth is number one",
            style: GoogleFonts.lato(
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "There is no instant way to a healthy life",
            style: GoogleFonts.lato(
              fontSize: 15,
              color: const Color.fromRGBO(25, 33, 38, 0.5),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          GestureDetector(
            onTap: () {
              Get.off(const BottomNavigationBarCustom());
            },
            child: Container(
              height: 56,
              width: screenWidth,
              margin: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(25, 33, 38, 1),
                  borderRadius: BorderRadius.circular(32)),
              child: Text(
                "Get Started",
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
