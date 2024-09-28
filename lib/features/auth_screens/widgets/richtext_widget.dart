import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/widgets/textstyles.dart';

class RegisterSignUpRichText extends StatelessWidget {
  final String? routeString;
  final String? routeName;
  final String? questionString;
  const RegisterSignUpRichText({
    super.key,
    this.routeString,
    this.routeName,
    this.questionString,
  });

  final defaultRouteString = '/createAccount';
  final defaultRouteName = 'Create account';
  final defaultQuestionString = 'Not Registered ';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, routeString ?? defaultRouteString);
        },
        child: RichText(
          text: TextSpan(
            text: questionString ?? defaultQuestionString,
            style: appTextStyle14(context, GColors.mainBlackTextColor),
            children: [
              TextSpan(
                text: routeName ?? defaultRouteName,
                style: appTextStyle14700(context, GColors.mainColor),
                // Add an onTap callback if you want to handle the click event
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ***************** THE 'OR' DIVIDER ********************************

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      child: Row(
        children: [
          Container(
            width: 146.w,
            height: 0.6.h,
            color: GColors.grayColor,
          ),
          SizedBox(
            width: 7.w,
          ),
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.dg),
                border: Border.all(color: GColors.grayColor)),
            child: Center(
              child: Text(
                "OR",
                style: appTextStyle12(context),
              ),
            ),
          ),
          SizedBox(
            width: 7.w,
          ),
          Container(
            width: 150.w,
            height: 0.6.h,
            color: GColors.grayColor,
          ),
        ],
      ),
    );
  }
}
