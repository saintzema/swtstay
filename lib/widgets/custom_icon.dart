import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 72.h,
        width: 72.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.dg),
            color: GColors.iconBGcolor),
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
