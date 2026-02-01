class LoginConstants {
  // Email regex pattern
  static const String emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

  // Phone regex pattern (supports international format and Egyptian numbers)
  // Accepts: +201234567890, 01234567890, 1234567890
  static const String phoneRegex = r'^(\+?20)?1[0-2,5]\d{8}$';

  // Name regex pattern (letters and spaces only)
  // Supports Arabic and English names
  static const String nameRegex = r'^[a-zA-Z\u0600-\u06FF\s]+$';

  // Password minimum length
  static const int passwordMinLength = 6;

  // Name minimum length
  static const int nameMinLength = 2;
}
