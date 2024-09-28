import 'package:shared_preferences/shared_preferences.dart';

class AppStorage {
  // store onboarded status
  Future<void> onboardUser() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('isOnboard', true); 
  }

  // check if user onboarded status
  Future<bool?> isOnboarded() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool('isOnboard');
  }

  // Store user auth token
  Future<void> saveAuthToken(String token) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('auth_token', token);
  }

  // Retrieve the user auth token
  Future<String?> getAuthToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('auth_token');
  }

  // Remove the user auth token
  Future<bool> removeAuthToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.remove('auth_token');
  }

  // Retrieve the last route before redirection
  Future<String?> getLastRoute() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('last_route');
  }

  // Save the last route before redirection
  Future<void> saveLastRoute(String route) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('last_route', route);
  }
}

Future<String?> appOnboardMiddleware() async {
  final bool? isBoarded = await AppStorage().isOnboarded();
  if (isBoarded == true) {
    return '/allProduct';
  } else {
    return '/';
  }
}

Future<bool> authMiddleware() async {
  final String? isLoggedIn = await AppStorage().getAuthToken();
  return isLoggedIn != null; // Return a boolean directly
}



// import 'package:shared_preferences/shared_preferences.dart';

// class AppStorage {
//   // store onboarded status
//   Future<void> onboardUser() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     pref.setBool('isOnboard', true);
//   }

//   // check if user onboarding status
//   Future<bool?> isOnboarded() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getBool('isOnboard');
//   }

//   // Store user auth token
//   Future<void> saveAuthToken(String token) async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     pref.setString('auth_token', token);
//   }

//   // retrieve the user auth token
//   Future<String?> getAuthToken() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.getString('auth_token');
//   }

//     // retrieve the user auth token
//   Future<bool> removeAuthToken() async {
//     final SharedPreferences pref = await SharedPreferences.getInstance();
//     return pref.remove('auth_token');
//   }
// }
