import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final String image;
  final VoidCallback? onTap;

  const SocialButton({
    super.key,
    required this.text,
    this.color, // Changed to optional Color
    this.textColor,
    this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 56.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: isDarkMode(context) ? GColors.whiteColor : GColors.mainColor,
            ),
            // color: color ?? defaultColor, // Use provided color or default color
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),

            // Image.asset(image),
            child: Center(
              child: Text(
                text,
                style: appTextStyle14600(
                  context,
                  isDarkMode(context) ? GColors.whiteColor : GColors.mainColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
