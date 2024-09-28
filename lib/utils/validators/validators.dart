class Validators {
  static String? passwordValidator(String? password) {
    if (password == null || password.isEmpty) {
      return 'Please enter your password.';
    }
    final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
    if (!regex.hasMatch(password)) {
      return 'Password must be at least 8 characters long and include a lowercase letter, an uppercase letter, a number, and a special character.';
    }
    return null;
  }

  static String? phoneNumberValidator(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Please enter your phone number.';
    }
    final regex = RegExp(r'^[0-9]+$');
    if (!regex.hasMatch(phoneNumber)) {
      return 'Please enter a valid phone number.';
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "* Email is required";
    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return "Invalid email format";
    } else {
      return value;
    }
  }
}

String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return "* Required";
  } else if (value.length < 6) {
    return "Password should be at least 6 characters";
  } else if (value.length > 15) {
    return "Password should not be greater than 15 characters";
  } else {
    return value; // Return the validated password
  }
}

// String? validateEmail(String? value) {
//   if (value == null || value.isEmpty) {
//     return "* Email is required";
//   } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//     return "Invalid email format";
//   } else {
//     return value;
//   }
// }

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  }
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  if (!emailRegex.hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
}
