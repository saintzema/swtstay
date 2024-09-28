import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';

TextStyle appTextStyle8(BuildContext context, [Color? color]) {
  return TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 8.sp, fontWeight: FontWeight.w400, color: isDarkMode(context) ? color : color);
}

TextStyle appTextStyle10(BuildContext context, [Color? color]) {
  return TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 10.sp, fontWeight: FontWeight.w400, color: isDarkMode(context) ? color : color);
}

TextStyle appTextStyle12(BuildContext context, [Color? color]) {
  return TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 12.sp, fontWeight: FontWeight.w400, color: isDarkMode(context) ? color : GColors.subTextColor);
}

TextStyle appTextStyle12500(BuildContext context, [Color? color]) {
  return TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 12.sp, fontWeight: FontWeight.w500, color: isDarkMode(context) ? color : color);
}

TextStyle appTextStyle12600(BuildContext context, [Color? color]) {
  return TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 12.sp, fontWeight: FontWeight.w600, color: isDarkMode(context) ? color : color);
}

TextStyle appTextStyle12K(Color color) {
  return TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 12.sp, fontWeight: FontWeight.w400, color: color);
}

TextStyle appTextStyle14(BuildContext context, [Color? color]) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',

    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: isDarkMode(context) ? GColors.whiteColor : color, // Default color to black if color is null
  );
}

TextStyle appTextStyle14700(BuildContext context, [Color? color]) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',

    fontSize: 14.sp, fontWeight: FontWeight.w700,
    color: isDarkMode(context) ? GColors.whiteColor : color, //
  );
}

TextStyle appTextStyle14Blue() {
  return TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 14.sp, fontWeight: FontWeight.w400, color: GColors.mainColor);
}

TextStyle appTextStyle14grey() {
  return TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', fontSize: 14.sp, fontWeight: FontWeight.w400, color: GColors.thirdGrayColor);
}

TextStyle appTextStyle14600(BuildContext context, [Color? color]) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: isDarkMode(context) ? GColors.whiteColor : color,
  );
}

TextStyle appTextStyle14500(BuildContext context, [Color? color]) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: isDarkMode(context) ? GColors.whiteColor : color,
  );
}

TextStyle appTextStyle16(BuildContext context, [Color? color]) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: isDarkMode(context) ? GColors.whiteColor : color,
  );
}

TextStyle appTextStyle16500(BuildContext context, [Color? color]) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: isDarkMode(context) ? GColors.whiteColor : color,
  );
}

TextStyle appTextStyle16700(BuildContext context, [Color? color]) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: isDarkMode(context) ? color : color,
  );
}

TextStyle appTextStyle16400(Color? color) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: color,
  );
}

TextStyle appTextStyle19(Color? color) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 19.sp,
    fontWeight: FontWeight.w500,
    color: color,
  );
}

TextStyle appTextStyle23(Color? color) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 23.sp,
    fontWeight: FontWeight.w300,
    color: color,
  );
}

TextStyle appTextStyle22500(BuildContext context, [Color? color]) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    color: isDarkMode(context) ? GColors.whiteColor : color,
  );
}

TextStyle mediumTextStyle700(BuildContext context, Color? color) {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
    color: isDarkMode(context) ? GColors.whiteColor : color,
  );
}

TextStyle bigTextStyle() {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontWeight: FontWeight.w700,
    fontSize: 33.sp,
    color: GColors.mainBlackTextColor,
  );
}

TextStyle bigTextStyle47() {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontWeight: FontWeight.w400,
    fontSize: 47.sp,
    color: GColors.mainBlackTextColor,
  );
}

TextStyle bigTextStyle2() {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontWeight: FontWeight.w400,
    fontSize: 33.sp,
    color: GColors.mainBlackTextColor,
  );
}

TextStyle bigTextStyle3() {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontWeight: FontWeight.w700,
    fontSize: 33.sp,
    color: GColors.mainColor,
  );
}

TextStyle bigTextStyle4() {
  return TextStyle(
    fontFamily: 'SFPRODISPLAYREGULAR',
    fontWeight: FontWeight.w400,
    fontSize: 33.sp,
    color: GColors.mainColor,
  );
}
