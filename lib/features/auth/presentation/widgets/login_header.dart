import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/constants/login_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 0.45.sh,
          width: double.infinity,
          child: Image.asset(
            LoginStrings.loginImagePath,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 50.h,
          left: 20.w,
          right: 20.w,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
              const Spacer(),
              Text(
                LoginStrings.welcomeText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              SizedBox(width: 48.w),
            ],
          ),
        ),
      ],
    );
  }
}
