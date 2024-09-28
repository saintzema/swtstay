import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/widgets/textstyles.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String hintText;
  final String? Function(String?)? validator; // Add validator parameter
  final bool obscureText;
  final bool readOnly;

  const CustomTextField({
    super.key, // Use key parameter instead of super.key
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.readOnly = false,
  });
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // Specify super(key: key) to pass the key parameter
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 8.h),
          TextFormField(
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            readOnly: widget.readOnly,

            // Use TextFormField instead of TextField
            controller: widget.controller,
            style: appTextStyle14(context, GColors.mainBlackTextColor),
            decoration: InputDecoration(
              focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.dg), borderSide: const BorderSide(color: GColors.textFiledBorderColor)),
              // contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              // border: OutlineInputBorder(
              //   borderSide: const BorderSide(color: GColors.textFiledBorderColor),
              //   borderRadius: BorderRadius.circular(10.dg),
              // ),
              suffixIcon: Transform.scale(scale: 0.6, child: widget.suffixIcon),
              contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              hintText: widget.hintText,
              errorStyle: appTextStyle12K(GColors.primaryRedColor),
              hintStyle: appTextStyle14(context, GColors.hintTextColor),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.dg),
                borderSide: const BorderSide(color: GColors.textFiledBorderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.dg),
                borderSide: const BorderSide(color: GColors.textFiledBorderColor),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.dg),
                borderSide: const BorderSide(color: GColors.primaryRedColor),
              ),
            ),
            validator: widget.validator, // Assign the validator function
          ),
        ],
      ),
    );
  }
}

// This is for use on when in a row with another widget
class CustomTextField2 extends StatefulWidget {
  final TextEditingController controller;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String hintText;
  final String? Function(String?)? validator; // Add validator parameter
  final bool obscureText;
  final bool readOnly;

  const CustomTextField2({
    super.key, // Use key parameter instead of super.key
    required this.hintText,
    required this.controller,
    this.suffixIcon,
    this.validator,
    this.obscureText = false,
    this.keyboardType,
    this.readOnly = false,
  });
  @override
  State<CustomTextField2> createState() => _CustomTextField2State();
}

class _CustomTextField2State extends State<CustomTextField2> {
  // Specify super(key: key) to pass the key parameter
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 8.h),
          TextFormField(
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            readOnly: widget.readOnly,

            // Use TextFormField instead of TextField
            controller: widget.controller,
            style: appTextStyle14(context, GColors.mainBlackTextColor),
            decoration: InputDecoration(
              focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide(color: GColors.textFiledBorderColor)),
              // contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: GColors.textFiledBorderColor),
                borderRadius: BorderRadius.circular(10.dg),
              ),
              suffixIcon: Transform.scale(scale: 0.6, child: widget.suffixIcon),
              contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
              hintText: widget.hintText,
              hintStyle: appTextStyle14(context, GColors.hintTextColor),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: GColors.textFiledBorderColor),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: GColors.textFiledBorderColor),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: GColors.textFiledBorderColor),
              ),
            ),
            validator: widget.validator, // Assign the validator function
          ),
        ],
      ),
    );
  }
}
