import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/constants/splash_strings.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onNext, required this.onSkip});
  final VoidCallback onNext;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          TextButton(
            onPressed: onSkip,
            child: Text(
              SplashStrings.skipText,
              style: TextStyle(color: Colors.grey, fontSize: 16.sp),
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onNext,
            child: Text(
              SplashStrings.nextText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
