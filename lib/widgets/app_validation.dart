// import 'package:agogo/widgets/toast.dart';

// String? validatePassword(String? value) {
//   if (value == null || value.isEmpty) {
//     showToast("* Required");
//     return null;
//   } else if (value.length < 6) {
//     showToast("Password should be at least 6 characters");
//     return null;
//   } else if (value.length > 15) {
//     showToast("Password should not be greater than 15 characters");
//     return null;
//   } else {
//     return value; // Return the validated password
//   }
// }

// String? validateEmail(String? value) {
//   if (value == null || value.isEmpty) {
//     showToast("* Email is required");
//     return null;
//   } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
//     showToast("Invalid email format");
//     return null;
//   } else {
//     return value;
//   }
// }

// class AppValidation{
//   String? _validateEmail(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter your email';
//     }
//     final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
//     if (!emailRegex.hasMatch(value)) {
//       return 'Please enter a valid email';
//     }
//     return null;
//   }

//   String? _validatePassword(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter your password';
//     }
//     if (value.length < 6) {
//       return 'Password must be at least 6 characters long';
//     }
//     return null;
//   }

// }