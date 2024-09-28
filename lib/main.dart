import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swtstay/app/app_routes.dart';
import 'package:swtstay/features/auth_screens/screens/sign_screen.dart';
import 'package:swtstay/features/onboarding/onboarding_screen.dart';
import 'package:swtstay/utils/theme/theme.dart';
import 'package:swtstay/utils/theme/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

// *************** Theme manager instance ***************
ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showOnboarding = false;

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    _checkOnboardingStatus();
    super.initState();
  }

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  themeListener() {
    if (mounted) {
      setState(() {
        _applyStatusBarStyle();
      });
    }
  }

  // ************* Shared preferences onboarding check **********************
  Future<void> _checkOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? onboardingCompleted = prefs.getBool('onboardingCompleted');
    setState(() {
      _showOnboarding = onboardingCompleted == null || !onboardingCompleted;
    });
  }

  void _applyStatusBarStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // Transparent status bar
        statusBarBrightness: Brightness.dark, // Dark text for status bar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _applyStatusBarStyle();

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        themeMode: _themeManager.themeMode,
        theme: GAppTheme.lightTheme,
        darkTheme: GAppTheme.darkTheme,
        home: _showOnboarding ? const OnboardingScreen() : const SignInScreen(),
        onGenerateRoute: onGenerateRoute,
      ),
    );
  }
}

// ************** The Reuseable button for dark and light theme ************

class ToggleSwitch extends StatelessWidget {
  const ToggleSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _themeManager.themeMode == ThemeMode.dark,
      onChanged: (newValue) {
        _themeManager.toggleTheme(newValue);
        // Rebuild the widget to reflect the theme change
        (context as Element).markNeedsBuild();
      },
    );
  }
}
