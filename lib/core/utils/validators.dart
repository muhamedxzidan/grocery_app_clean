import 'package:grocery_app_clean/core/constants/login_constants.dart';
import 'package:grocery_app_clean/core/constants/login_strings.dart';
class Validators {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return LoginStrings.emailEmptyError;
    }
    if (!RegExp(LoginConstants.emailRegex).hasMatch(value)) {
      return LoginStrings.emailInvalidError;
    }
    return null;
  }
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return LoginStrings.passwordEmptyError;
    }
    if (value.length < 6) {
      return LoginStrings.passwordLengthError;
    }
    return null;
  }
}
