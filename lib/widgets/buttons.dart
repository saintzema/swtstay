import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/widgets/textstyles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    required this.text,
    this.color, // Changed to optional Color
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const defaultColor = GColors.mainColor;
    // Color.fromARGB(255, 26, 26, 118); // Set your default color here
    const defaultTextColor = GColors.whiteColor; // Set your default color here

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 56.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            // border: Border.all(color: GColors.mainColor),
            color: color ?? defaultColor, // Use provided color or default color
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? defaultTextColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final String text;
  const CustomButton2({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 56.h,
        width: double.maxFinite,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.dg), color: GColors.primaryRedColor),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Iconsax.logout,
                size: 20.h,
                color: GColors.whiteColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                text,
                style: appTextStyle14(context, GColors.whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton3 extends StatelessWidget {
  final Widget text;
  final VoidCallback? onTap; // Changed to VoidCallback
  const CustomButton3({super.key, required this.text, this.onTap}); // Added 'Key?' to 'key'

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 56.h,
          width: double.maxFinite,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.dg), color: GColors.mainColor), // Adjusted colors for testing
          child: Center(
            // Adjusted text style for testing
            child: text, // Use the provided Widget directly
          ),
        ),
      ),
    );
  }
}

class CustomButton4 extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback? onTap; // Changed to VoidCallback
  const CustomButton4({super.key, required this.text, this.onTap, required this.color}); // Added 'Key?' to 'key'

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        width: double.maxFinite,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.dg), color: color), // Adjusted colors for testing
        child: Center(
          child: Text(
            text,
            style: appTextStyle14(context, GColors.whiteColor), // Adjusted text style for testing
          ),
        ),
      ),
    );
  }
}

class CustomButton5 extends StatelessWidget {
  final Widget text;
  final VoidCallback? onTap; // Changed to VoidCallback
  const CustomButton5({super.key, required this.text, this.onTap}); // Added 'Key?' to 'key'

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            height: 56.h,
            width: double.maxFinite,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.dg), color: GColors.primaryRedColor), // Adjusted colors for testing
            child: Center(
              // Adjusted text style for testing
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.logout,
                    size: 20.h,
                    color: GColors.whiteColor,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  text,
                ],
              ),
            )),
      ),
    );
  }
}
