// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';

class CustomCardFavorite extends StatefulWidget {
  final String productname;
  final String price;
  final String weight;
  final String prodimg;
  const CustomCardFavorite({
    super.key,
    required this.price,
    required this.productname,
    required this.weight,
    required this.prodimg,
  });

  @override
  State<CustomCardFavorite> createState() => _CustomCardFavoriteState();
}

class _CustomCardFavoriteState extends State<CustomCardFavorite> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 100.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              spreadRadius: 2,
              blurRadius: 5.r,
              offset: Offset(0, 3.h),
            ),
          ],
        ),
        child: Center(
          child: ListTile(
            leading: SizedBox(
                height: 100.h,
                width: 100.w,
                child: Image.asset(widget.prodimg)),
            title: Text(
              widget.productname,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.weight),
                Text(
                  widget.price,
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
