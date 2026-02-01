import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app_clean/core/constants/login_strings.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';
import 'package:grocery_app_clean/core/theme/app_text_styles.dart';

class SignUpRow extends StatelessWidget {
  final VoidCallback? onSignUpPressed;

  const SignUpRow({super.key, this.onSignUpPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: LoginStrings.noAccountPrompt,
          style: AppTextStyles.bodyMedium,
          children: [
            TextSpan(
              text: LoginStrings.signUpText,
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()..onTap = onSignUpPressed,
            ),
          ],
        ),
      ),
    );
  }
}
