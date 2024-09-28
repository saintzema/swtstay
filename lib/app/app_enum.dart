// application loading state
// ignore_for_file: constant_identifier_names

enum LoadState {
  idle,
  loading,
}

// badge images
enum BadgeImage {
  premium,
  gold,
  diamond,
}

// rest password state
enum ResetState {
  sendOtpMail,
  resetWithOtp,
}

// rest password state
enum EmailValidateState {
  sendOtpMail,
  validateWithOtp,
}

// payment types
enum CheckoutType {
  Save2pay,
  OneTime,
  Shared,
}
