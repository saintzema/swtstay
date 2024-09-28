import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/theme/custom_themes/appbar_theme.dart';
import 'package:swtstay/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:swtstay/utils/theme/custom_themes/check_box_theme.dart';
import 'package:swtstay/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:swtstay/utils/theme/custom_themes/text_field_theme.dart';
import 'package:swtstay/utils/theme/custom_themes/text_theme.dart';

class GAppTheme {
  GAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: "poppins",
      primaryColor: GColors.mainColor,
      scaffoldBackgroundColor: Colors.white,
      textTheme: GTextTheme.lightTextTheme,
      elevatedButtonTheme: GElevatedButtonTheme.lightElevatedButtonTheme,
      // appBarTheme: GAppBarThem.lightAppBatTheme,
      appBarTheme: GAppBarTheme.lightAppBatTheme.copyWith(
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 24,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
      bottomSheetTheme: GBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: GCheckboxTheme.lightCheckboxTheme,
      inputDecorationTheme: GTextFieldTheme.lightInputDecorationTheme);

  // Dark theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: "poppins",
      primaryColor: GColors.mainColor,
      scaffoldBackgroundColor: GColors.mainBlackTextColor,
      textTheme: GTextTheme.dartTextTheme,
      elevatedButtonTheme: GElevatedButtonTheme.darkElevatedButtonTheme,
      // appBarTheme: GAppBarThem.darkAppBatTheme,
      appBarTheme: GAppBarTheme.lightAppBatTheme.copyWith(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 24,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
      ),
      bottomSheetTheme: GBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: GCheckboxTheme.darkCheckboxTheme,
      inputDecorationTheme: GTextFieldTheme.darkInputDecorationTheme);
}
