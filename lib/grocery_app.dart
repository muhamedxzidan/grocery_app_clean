import 'package:flutter/material.dart';
import 'package:grocery_app_clean/features/auth/presentation/screens/splash_screen.dart';
class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
