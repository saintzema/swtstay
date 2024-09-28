import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/widgets/textstyles.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController searchController;
  final void Function(String)? onChanged;
  final bool readOnly;
  const CustomSearchBar({
    super.key,
    required this.searchController,
    this.onChanged,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: 400,
      child: TextField(
        readOnly: readOnly,
        controller: searchController,
        onChanged: onChanged,
        style: appTextStyle14(context, GColors.mainBlackTextColor),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20.w, bottom: 0.h),
          hintText: "Where are you off to?...",
          hintStyle: appTextStyle14(context, GColors.hintTextColor),
          prefixIcon: Icon(
            Iconsax.search_normal,
            size: 24.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.h),
            borderSide: const BorderSide(color: GColors.mainBlackTextColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.h),
            borderSide: const BorderSide(color: GColors.mainBlackTextColor),
          ),
        ),
      ),
    );
  }
}

class CustomSearchBar2 extends StatelessWidget {
  final TextEditingController searchController;
  final void Function(String)? onChanged;
  const CustomSearchBar2({
    super.key,
    required this.searchController,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: SizedBox(
        height: 40.h,
        child: TextField(
          controller: searchController,
          onChanged: onChanged,
          style: appTextStyle10(context, GColors.mainBlackTextColor),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20.w, bottom: 0.h),
            hintText: "Type month...",
            hintStyle: appTextStyle10(context, GColors.hintTextColor),
            suffixIcon: Icon(
              Iconsax.search_normal,
              size: 24.h,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.h),
              borderSide: const BorderSide(color: GColors.mainBlackTextColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.h),
              borderSide: const BorderSide(color: GColors.mainBlackTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
