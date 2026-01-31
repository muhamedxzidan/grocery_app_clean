import 'package:flutter/material.dart';
import 'package:grocery_app_new/constants/app_colors.dart';
import 'package:grocery_app_new/features/auth/presentation/screens/categories_screen.dart';
import 'package:grocery_app_new/widgets/input_field.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/hassan.jpg', fit: BoxFit.cover),
                const Positioned(
                  top: 40,
                  left: 140,
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Create account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Quickly create account",
                    style: TextStyle(fontSize: 14, color: textGray),
                  ),

                  const SizedBox(height: 25),

                  const InputField(icon: Icons.email, hint: "Email address"),

                  const InputField(icon: Icons.phone, hint: "Phone number"),

                  const InputField(
                    icon: Icons.lock,
                    hint: "Password",
                    isPassword: true,
                  ),

                  const SizedBox(height: 25),

                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CategoriesScreen(),
                          ),
                        );
                      },
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(mainGreen),
                        elevation: WidgetStatePropertyAll(0),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Signup",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  const Center(
                    child: Text.rich(
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(fontSize: 14),
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(
                              color: mainGreen,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
