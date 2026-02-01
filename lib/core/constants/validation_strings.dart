class ValidationStrings {
  // Email validation messages
  static const String emailEmpty = 'Please enter your email';
  static const String emailInvalid = 'Please enter a valid email address';

  // Password validation messages
  static const String passwordEmpty = 'Please enter your password';
  static const String passwordShort = 'Password must be at least 6 characters';
  static const String passwordWeak =
      'Password must contain letters and numbers';

  // Phone validation messages
  static const String phoneEmpty = 'Please enter your phone number';
  static const String phoneInvalid = 'Please enter a valid phone number';

  // Name validation messages
  static const String nameEmpty = 'Please enter your name';
  static const String nameInvalid = 'Name must contain only letters';
  static const String nameShort = 'Name must be at least 2 characters';

  // Confirm Password validation messages
  static const String confirmPasswordEmpty = 'Please confirm your password';
  static const String confirmPasswordMismatch = 'Passwords do not match';

  // General validation messages
  static const String fieldRequired = 'This field is required';
}
