import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/widgets/textstyles.dart';

// here is the custom text for TextFields
class CustomText extends StatelessWidget {
  final Color? color;
  final String text;
  // final int maxLineLength; // Maximum length of the text line
  const CustomText({
    super.key,
    required this.text,
    this.color,
    // this.maxLineLength = 20, // Default maximum length (adjust as needed)
  });

  @override
  Widget build(BuildContext context) {
    // String truncatedText = text.length > maxLineLength
    //     ? '${text.substring(0, maxLineLength)}...'
    //     : text;
    const defaultColor = GColors.mainBlackTextColor;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: Text(
        // truncatedText,
        text,
        style: appTextStyle14(context, color ?? defaultColor),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

// THIS IS THE CUSTOM TEXT FOR BIG TEXT
class CustomBigText extends StatelessWidget {
  final Color? color;
  final String text;
  const CustomBigText({super.key, required this.text, this.color});
  final defaultColor = GColors.mainBlackTextColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: Text(
        text,
        style: appTextStyle22500(context, color ?? defaultColor),
      ),
    );
  }
}

class CustomSubText extends StatelessWidget {
  final String text;
  const CustomSubText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        text,
        style: appTextStyle12(context),
      ),
    );
  }
}

class CustomText16500 extends StatelessWidget {
  final String text;
  final Color color;
  const CustomText16500({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        text,
        style: appTextStyle16500(context, color),
      ),
    );
  }
}

// The custom text row for text 16500 and cart Icon
class BigTextIconRow extends StatelessWidget {
  final String text;
  const BigTextIconRow({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: appTextStyle16500(context, GColors.mainColor),
        ),
        SizedBox(
          width: 5.w,
        ),
        Image.asset(
          "assets/images/cart.png",
          height: 24.h,
        )
      ],
    );
  }
}
