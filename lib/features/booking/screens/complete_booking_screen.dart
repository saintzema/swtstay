import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/features/profile/profile_widgets/personal_information_widget/personal_info_widget.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class CompleteBookingScreen extends StatelessWidget {
  const CompleteBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: GColors.whiteColor),
        backgroundColor: GColors.mainColor,
        title: Text(
          'Complete booking',
          style: appTextStyle14700(context, GColors.whiteColor),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 600.h, child: const PersonalInfoWidget()),
            ],
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              color: isDarkMode(context) ? GColors.mainBlackTextColor : GColors.whiteColor,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      color: GColors.mainBlackTextColor,
                    ),
                    verticalGap(10.h),
                    Text(
                      'NGN34.000',
                      style: appTextStyle14700(context),
                    ),
                    verticalGap(10.h),
                    Text(
                      'Include taxes and fees',
                      style: appTextStyle12(context),
                    ),
                    verticalGap(10.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(380.w, 56.h),
                      ),
                      onPressed: () {
                        // navigateToScreen(context, const CompleteBookingScreen());
                      },
                      child: const Text(
                        'Next',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
