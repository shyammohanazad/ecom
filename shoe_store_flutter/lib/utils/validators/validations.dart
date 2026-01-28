
class MyAppValidators {
  // Regular Expression for email validation
  static final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  // Email Validator
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    // check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    // Check for UpperCase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must conatain at least one Upper-case letter.';
    }

    // Check if password contains numbers or not.
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    // Check for special Characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?:{}|<>]'))) {
      return 'Password must contain a special character.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is required';
    }

    // Regular Exprression for phone Number validation
    final phoneRegExp = RegExp(r'^\d(10)');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone Number - 10 digits required.';
    }
    return null;
  }

  // Add more custome validators as needed.
}
