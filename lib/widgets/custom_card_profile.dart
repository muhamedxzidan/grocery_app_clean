// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';

class CustomCardProfile extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget navigateScreen;

  const CustomCardProfile({
    super.key,
    required this.text,
    required this.icon,
    required this.navigateScreen,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Card(
        color: AppColors.white,
        elevation: 0.5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => navigateScreen),
            );
          },
          leading: Icon(icon, color: AppColors.primary, size: 24.sp),
          title: Text(text,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.normal)),
          trailing: Icon(Icons.arrow_forward_ios, size: 20.sp),
        ),
      ),
    );
  }
}
