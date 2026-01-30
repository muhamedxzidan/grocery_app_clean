import 'package:flutter/material.dart';
import 'package:grocery_app_new/features/profile/presentation/screens/favorite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyFavorite();
  }
}
