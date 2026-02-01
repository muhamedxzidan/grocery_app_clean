import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';
import 'package:grocery_app_clean/features/auth/presentation/screens/login_screen.dart';
import 'package:grocery_app_clean/widgets/custom_button.dart';
import 'package:grocery_app_clean/widgets/custom_splash_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:grocery_app_clean/core/constants/splash_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: const [
                  CustomSplashPage(
                    image: SplashStrings.splash1Image,
                    title: SplashStrings.splash1Title,
                    subTitle: SplashStrings.splash1SubTitle,
                  ),
                  CustomSplashPage(
                    image: SplashStrings.splash2Image,
                    title: SplashStrings.splash2Title,
                    subTitle: SplashStrings.splash2SubTitle,
                  ),
                  CustomSplashPage(
                    image: SplashStrings.splash3Image,
                    title: SplashStrings.splash3Title,
                    subTitle: SplashStrings.splash3SubTitle,
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColors.primary,
                dotColor: AppColors.textLightGrey,
                dotHeight: 8.h,
                dotWidth: 8.w,
                expansionFactor: 2,
              ),
            ),
            SizedBox(height: 32.h),
            CustomButton(
              onNext: () {
                if ((controller.page ?? 0) < 2) {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                }
              },
              onSkip: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
