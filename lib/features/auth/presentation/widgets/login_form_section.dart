import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app_clean/core/constants/login_strings.dart';
import 'package:grocery_app_clean/core/theme/app_colors.dart';
import 'package:grocery_app_clean/core/theme/app_text_styles.dart';
import 'package:grocery_app_clean/core/utils/validators.dart';
import 'package:grocery_app_clean/widgets/custom_text_form_field.dart';
import 'package:grocery_app_clean/widgets/main_button.dart';
import 'package:grocery_app_clean/features/auth/presentation/widgets/sign_up_row.dart';

class LoginFormSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final bool obscurePassword;
  final bool rememberMe;
  final VoidCallback onToggleObscure;
  final ValueChanged<bool?> onToggleRemember;
  final VoidCallback onLoginPressed;
  final VoidCallback onSignUpPressed;
  const LoginFormSection({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.obscurePassword,
    required this.rememberMe,
    required this.onToggleObscure,
    required this.onToggleRemember,
    required this.onLoginPressed,
    required this.onSignUpPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -30.h),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(24.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LoginStrings.welcomeBackTitle,
                style: AppTextStyles.heading1,
              ),
              SizedBox(height: 8.h),
              Text(
                LoginStrings.signInSubtitle,
                style: AppTextStyles.bodyMedium,
              ),
              SizedBox(height: 32.h),
              _buildEmailField(),
              SizedBox(height: 20.h),
              _buildPasswordField(),
              SizedBox(height: 16.h),
              _buildRememberMeAndForgotRow(),
              SizedBox(height: 32.h),
              _buildLoginButton(),
              SizedBox(height: 24.h),
              SignUpRow(onSignUpPressed: onSignUpPressed),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return CustomTextFormField(
      controller: emailController,
      hintText: LoginStrings.emailHint,
      keyboardType: TextInputType.emailAddress,
      prefixIcon: Icon(
        Icons.email_outlined,
        color: AppColors.textGrey,
        size: 20.sp,
      ),
      validator: Validators.email,
    );
  }

  Widget _buildPasswordField() {
    return CustomTextFormField(
      controller: passwordController,
      hintText: LoginStrings.passwordHint,
      obscureText: obscurePassword,
      prefixIcon: Icon(
        Icons.lock_outline,
        color: AppColors.textGrey,
        size: 20.sp,
      ),
      suffixIcon: IconButton(
        icon: Icon(
          obscurePassword
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: AppColors.textGrey,
          size: 20.sp,
        ),
        onPressed: onToggleObscure,
      ),
      validator: Validators.password,
    );
  }

  Widget _buildRememberMeAndForgotRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 0.7.r,
              child: Switch(
                value: rememberMe,
                onChanged: onToggleRemember,
                activeThumbColor: AppColors.primary,
              ),
            ),
            Text(
              LoginStrings.rememberMeText,
              style: AppTextStyles.caption.copyWith(
                color: AppColors.textGrey,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            LoginStrings.forgotPasswordText,
            style: AppTextStyles.caption.copyWith(
              color: Colors.blue[700],
              fontWeight: FontWeight.bold,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return MainButton(
      text: LoginStrings.loginButtonText,
      onPressed: onLoginPressed,
    );
  }
}
