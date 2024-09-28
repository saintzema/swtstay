import 'package:flutter/material.dart';
import 'package:swtstay/app/app_storage.dart';

Future<String> appOnboardMiddleware() async {
  try {
    final bool? isBoarded = await AppStorage().isOnboarded();
    return isBoarded == true ? '/allProduct' : '/';
  } catch (e) {
    // print('Error in appOnboardMiddleware: $e');
    return '/'; // Handle error by defaulting to '/'
  }
}

Future<bool> authMiddleware() async {
  try {
    final String? isLoggedIn = await AppStorage().getAuthToken();
    return isLoggedIn != null;
  } catch (e) {
    // print('Error in authMiddleware: $e');
    return false; // Handle error by defaulting to false
  }
}

// Define an enum for authentication state
enum AuthState { authenticated, unauthenticated }

// Create a provider to manage authentication state
class AuthStateModel extends ChangeNotifier {
  AuthState _state = AuthState.unauthenticated;
  // String? _lastRoute; // Variable to store last route

  AuthState get state => _state;
  // String? get lastRoute => _lastRoute;

  void login(BuildContext context) {
    // Perform login logic, set authentication state to authenticated
    _state = AuthState.authenticated;
    notifyListeners();
  }
}

// Future<bool> routeGuard(BuildContext context) async {
//   final authState = context.read<AuthStateModel>().state;
//   if (authState == AuthState.authenticated) {
//     return true; // User is authenticated, allow navigation
//   } else {
//     // final currentRoute = ModalRoute.of(context);
//     // if (currentRoute != null && currentRoute.settings.name != null) {
//     //   context.read<AuthStateModel>().setLastRoute(currentRoute.settings.name!);
//     // }

//     // Navigate to login screen
//     Navigator.of(context).pushReplacementNamed('/signIn');
//     return false;
//   }
// }
