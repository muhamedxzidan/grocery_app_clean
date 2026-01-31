import 'package:flutter/material.dart';
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
  });
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -30),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                LoginStrings.welcomeBackTitle,
                style: AppTextStyles.heading1,
              ),
              const SizedBox(height: 8),
              const Text(
                LoginStrings.signInSubtitle,
                style: AppTextStyles.bodyMedium,
              ),
              const SizedBox(height: 32),
              _buildEmailField(),
              const SizedBox(height: 20),
              _buildPasswordField(),
              const SizedBox(height: 16),
              _buildRememberMeAndForgotRow(),
              const SizedBox(height: 32),
              _buildLoginButton(),
              const SizedBox(height: 24),
              const SignUpRow(),
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
      prefixIcon: const Icon(
        Icons.email_outlined,
        color: AppColors.textGrey,
        size: 20,
      ),
      validator: Validators.email,
    );
  }
  Widget _buildPasswordField() {
    return CustomTextFormField(
      controller: passwordController,
      hintText: LoginStrings.passwordHint,
      obscureText: obscurePassword,
      prefixIcon: const Icon(
        Icons.lock_outline,
        color: AppColors.textGrey,
        size: 20,
      ),
      suffixIcon: IconButton(
        icon: Icon(
          obscurePassword
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
          color: AppColors.textGrey,
          size: 20,
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
              scale: 0.7,
              child: Switch(
                value: rememberMe,
                onChanged: onToggleRemember,
                activeThumbColor: AppColors.primary,
              ),
            ),
            Text(
              LoginStrings.rememberMeText,
              style: AppTextStyles.caption.copyWith(color: AppColors.textGrey),
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
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: MainButton(
        text: LoginStrings.loginButtonText,
        onPressed: onLoginPressed,
      ),
    );
  }
}
