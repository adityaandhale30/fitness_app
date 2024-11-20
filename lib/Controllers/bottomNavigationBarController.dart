import 'package:fitness_app/View/Activity/activity_screen.dart';
import 'package:fitness_app/View/Explore/explore_screen.dart';
import 'package:fitness_app/View/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<StatelessWidget> screens = const [
    HomeScreen(),
    ExploreScreen(),
    ActivityScreen(),
    Placeholder(),
  ];
}
