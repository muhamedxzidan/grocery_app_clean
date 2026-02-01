import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';

class AppTextStyles {
  // Headings
  static TextStyle heading1 = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static TextStyle heading2 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  // Body Text
  static TextStyle bodyLarge = TextStyle(
    fontSize: 16.sp,
    color: AppColors.textDark,
  );

  static TextStyle bodyMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.textGrey,
  );

  // Captions
  static TextStyle caption = TextStyle(
    fontSize: 12.sp,
    color: AppColors.textLightGrey,
  );
}
