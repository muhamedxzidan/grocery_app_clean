import 'package:grocery_app_clean/core/constants/login_constants.dart';
import 'package:grocery_app_clean/core/constants/validation_strings.dart';

class Validators {
  /// Email Validator
  /// Checks if email is empty or doesn't match email pattern
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return ValidationStrings.emailEmpty;
    }
    if (!RegExp(LoginConstants.emailRegex).hasMatch(value)) {
      return ValidationStrings.emailInvalid;
    }
    return null;
  }

  /// Password Validator
  /// Checks if password is empty or less than minimum length
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return ValidationStrings.passwordEmpty;
    }
    if (value.length < LoginConstants.passwordMinLength) {
      return ValidationStrings.passwordShort;
    }
    return null;
  }

  /// Phone Validator
  /// Checks if phone is empty or doesn't match Egyptian phone pattern
  /// Accepts formats: 01234567890, +201234567890, 1234567890
  static String? phone(String? value) {
    if (value == null || value.isEmpty) {
      return ValidationStrings.phoneEmpty;
    }
    // Remove spaces and dashes for validation
    final cleanedPhone = value.replaceAll(RegExp(r'[\s-]'), '');
    if (!RegExp(LoginConstants.phoneRegex).hasMatch(cleanedPhone)) {
      return ValidationStrings.phoneInvalid;
    }
    return null;
  }

  /// Name Validator
  /// Checks if name is empty, too short, or contains invalid characters
  /// Only allows letters (Arabic/English) and spaces
  static String? name(String? value) {
    if (value == null || value.isEmpty) {
      return ValidationStrings.nameEmpty;
    }
    if (value.trim().length < LoginConstants.nameMinLength) {
      return ValidationStrings.nameShort;
    }
    if (!RegExp(LoginConstants.nameRegex).hasMatch(value)) {
      return ValidationStrings.nameInvalid;
    }
    return null;
  }

  /// Confirm Password Validator
  /// Checks if confirmation matches the original password
  /// Usage: validator: (value) => Validators.confirmPassword(value, _passwordController.text)
  static String? confirmPassword(String? value, String? originalPassword) {
    if (value == null || value.isEmpty) {
      return ValidationStrings.confirmPasswordEmpty;
    }
    if (value != originalPassword) {
      return ValidationStrings.confirmPasswordMismatch;
    }
    return null;
  }

  /// Generic Required Field Validator
  /// Used for any field that must not be empty
  /// Usage: validator: (value) => Validators.required(value)
  static String? required(String? value) {
    if (value == null || value.isEmpty) {
      return ValidationStrings.fieldRequired;
    }
    return null;
  }
}
