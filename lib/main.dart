import 'package:fitness_app/View/botton_navigation_custom.dart';
import 'package:fitness_app/View/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  // WidgetsFlutterBinding
  //     .ensureInitialized(); // Ensures Flutter binding is initialized before any async operations
  //     debugPrintRebuildDirtyWidgets = true;

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
