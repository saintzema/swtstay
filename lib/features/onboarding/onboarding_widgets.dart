import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textstyles.dart';

class GetStatedOne extends StatelessWidget {
  final VoidCallback onContinue;
  const GetStatedOne({super.key, required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GColors.mainBlackTextColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.dg),
            child: Column(
              children: [
                verticalGap(64.h),
                const CustomBigText(text: "Your Personalized Stay Booking Companion", color: GColors.whiteColor),
                verticalGap(10.h),
                Text(
                  'Every stay is tailored to your preferences. From cozy retreats to luxury getaways, find your perfect match with our intuitive app.',
                  style: appTextStyle14(context, GColors.whiteColor),
                ),
                verticalGap(20.h),
                // Row(
                //   children: [
                //     dottedContainer(40, Colors.blue),
                //     horizontalGap(5.w),
                //     dottedContainer(20, GColors.whiteColor),
                //   ],
                // ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.58,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              // color: _showGetStartedOne ? Colors.green : Colors.white,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  GImage.onboardImage1,
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.dg,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    onTap: onContinue,
                    text: "Continue",
                  ),

                  // const CustomButton(
                  //   text: "Continue as guest",
                  //   color: GColors.whiteColor,
                  //   textColor: GColors.mainColor,
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GetStatedTwo extends StatelessWidget {
  final void Function()? onTap;
  final void Function()? onGuestTap;
  const GetStatedTwo({super.key, this.onTap, this.onGuestTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            // color: _showGetStartedOne ? Colors.green : Colors.white,
            image: DecorationImage(
          image: AssetImage(
            GImage.onboardImage,
          ),
          fit: BoxFit.fill,
        )),
        child: Padding(
          padding: EdgeInsets.all(16.dg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  verticalGap(64.h),
                  const CustomBigText(text: "Enjoy Stress-free Hotel Bookings with SwtStay", color: GColors.mainBlackTextColor),
                  verticalGap(10.h),
                  Text(
                    'Say goodbye to the hassle of finding the perfect hotel. With Swtstay, your ideal accommodations are just a few taps away.',
                    style: appTextStyle14(context, GColors.mainBlackTextColor),
                  ),
                  verticalGap(20.h),
                  // Row(
                  //   children: [
                  //     dottedContainer(20, GColors.whiteColor),
                  //     horizontalGap(5.w),
                  //     dottedContainer(40, Colors.blue),
                  //   ],
                  // ),
                ],
              ),
              Column(
                children: [
                  CustomButton(
                    onTap: onTap,
                    // () => navigateToScreen(context, const BottomNav()),
                    text: "Get Started",
                  ),
                  verticalGap(10.h),
                  CustomButton(
                    onTap: onGuestTap,
                    text: "Continue as guest",
                    color: GColors.whiteColor,
                    textColor: GColors.mainColor,
                  ),
                  verticalGap(40.h),
                ],
              ),
            ],
          ),
        ));
  }
}

Widget dottedContainer(double width, Color color) {
  return Container(
    height: 6.h,
    width: width,
    decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(5.dg)),
  );
}
