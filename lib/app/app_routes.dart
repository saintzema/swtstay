import 'package:flutter/material.dart';
import 'package:swtstay/features/auth_screens/screens/create_accountdart.dart';
import 'package:swtstay/features/auth_screens/screens/forget_password.dart';
import 'package:swtstay/features/auth_screens/screens/new_password_screen.dart';
import 'package:swtstay/features/auth_screens/screens/otp_screen.dart';
import 'package:swtstay/features/auth_screens/screens/sign_screen.dart';
import 'package:swtstay/features/booking/screens/bookings_detail_screen.dart';
import 'package:swtstay/features/home/screens/filter_screen.dart';
import 'package:swtstay/features/home/screens/home_detail_screen.dart';
import 'package:swtstay/features/home/screens/homepage.dart';
import 'package:swtstay/features/home/screens/search_screen.dart';
import 'package:swtstay/features/profile/screens/favourites_screen.dart';
import 'package:swtstay/features/profile/screens/get_help_screen.dart';
import 'package:swtstay/features/profile/screens/personal_infomation.dart';
import 'package:swtstay/features/profile/screens/referral_screen.dart';
import 'package:swtstay/features/profile/screens/setting_screen.dart';
import 'package:swtstay/widgets/bottom_nav.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  // To Extract the route name from settings
  final routeName = settings.name;

  // Define a map of routes and their corresponding widgets
  final routes = {
    '/': (context) => const HomePage(),
    '/homeDetailScreen': (context) => const HomeDetailScreen(),
    '/signIn': (context) => const SignInScreen(),
    '/createAccount': (context) => const CreateAccountScreen(),
    '/otpScreen': (context) => const OtpScreen(),
    '/bottomNav': (context) => const BottomNav(),
    '/searchScreen': (context) => const SearchScreen(),
    '/filterScreen': (context) => const FilterScreen(),
    '/personalInfoScreen': (context) => const PersonalInformation(),
    '/settingScreen': (context) => const SettingScreen(),
    '/getHelpScreen': (context) => const GetHelpScreen(),
    '/forgetPassword': (context) => const ForgetPassword(),
    '/newPassword': (context) => const NewPasswordScreen(),
    '/bookingDetail': (context) => const BookingsDetailScreen(),
    '/favouritesScreen': (context) => const FavouritesScreen(),
    '/referScreen': (context) => const ReferralScreen(),
  };

  // Check if the requested route is in the routes map
  final builder = routes[routeName];

  // If the route is found, return the corresponding widget
  if (builder != null) {
    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }
  // If the route is not found, you can handle it with a default page or error page
  return MaterialPageRoute(
    builder: (context) => const ErrorPage(), // Create a DefaultPage widget
    settings: settings,
  );
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
          const SizedBox(width: 40),
          const Text("Error"),
        ],
      ),
    );
  }
}
