import 'package:flutter/material.dart';
import 'package:grocery_app_clean/core/constants/login_strings.dart';
class LoginHeader extends StatelessWidget {
  final Size size;
  const LoginHeader({super.key, required this.size});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.45,
          width: double.infinity,
          child: Image.asset(LoginStrings.loginImagePath, fit: BoxFit.cover),
        ),
        Positioned(
          top: 50,
          left: 20,
          right: 20,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
              const Spacer(),
              const Text(
                LoginStrings.welcomeText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const SizedBox(width: 48),
            ],
          ),
        ),
      ],
    );
  }
}
