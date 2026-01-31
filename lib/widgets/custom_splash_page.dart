import 'package:flutter/material.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';
import 'package:grocery_app_clean/core/theme/app_text_styles.dart';

class CustomSplashPage extends StatelessWidget {
  const CustomSplashPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(image, height: MediaQuery.of(context).size.height * 0.4),
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyles.heading1.copyWith(
                  color: AppColors.textBlack,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyMedium.copyWith(
                  color: AppColors.textLightGrey,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
