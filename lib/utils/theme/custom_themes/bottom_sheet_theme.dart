import 'package:flutter/material.dart';
import 'package:swtstay/utils/constants/colors.dart';

class GBottomSheetTheme {
  GBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  // Dark theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: GColors.mainBlackTextColor,
    modalBackgroundColor: GColors.mainBlackTextColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
