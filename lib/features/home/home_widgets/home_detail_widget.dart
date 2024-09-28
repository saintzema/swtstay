import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/booking/booking_widgets/booking_detail_widget.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class PropertyRatingWidget extends StatelessWidget {
  const PropertyRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.dg),
      height: 184.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: GColors.hintTextColor,
        ),
        borderRadius: BorderRadius.circular(10.dg),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rate our property',
                style: appTextStyle14700(context),
              ),
              Icon(
                Iconsax.close_circle,
                size: 24.h,
              ),
            ],
          ),
          verticalGap(12.h),
          Row(
            children: [
              CircleAvatar(
                radius: 30.h,
              ),
              horizontalGap(10.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1 of 1',
                    style: appTextStyle12(context),
                  ),
                  Text(
                    'Is the property info consistent?',
                    style: appTextStyle12500(context),
                  )
                ],
              )
            ],
          ),
          verticalGap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              rateContainer(context, '1'),
              rateContainer(context, '2'),
              rateContainer(context, '3'),
              rateContainer(context, '4'),
              rateContainer(context, '5'),
            ],
          )
        ],
      ),
    );
  }
}

Container rateContainer(BuildContext context, String text) {
  return Container(
    padding: EdgeInsets.all(12.dg),
    height: 48.h,
    width: 56.2.w,
    decoration: BoxDecoration(
      border: Border.all(
        color: GColors.hintTextColor,
      ),
      borderRadius: BorderRadius.circular(10.dg),
    ),
    child: Center(
      child: Text(
        text,
        style: appTextStyle16700(context),
      ),
    ),
  );
}

class PropertySurroundingWidget extends StatelessWidget {
  const PropertySurroundingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Property surroundings',
          style: appTextStyle14700(context),
        ),
        verticalGap(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Places of interest nearby*',
              style: appTextStyle12500(context),
            ),
            Icon(
              Iconsax.house_2,
              size: 20.h,
            ),
          ],
        ),
        verticalGap(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Leisure Park',
              style: appTextStyle12(context),
            ),
            Text(
              '2400ft',
              style: appTextStyle12(context),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Leisure Park',
              style: appTextStyle12(context),
            ),
            Text(
              '2400ft',
              style: appTextStyle12(context),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Leisure Park',
              style: appTextStyle12(context),
            ),
            Text(
              '2400ft',
              style: appTextStyle12(context),
            )
          ],
        ),
        verticalGap(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transport information*',
              style: appTextStyle12500(context),
            ),
            Row(
              children: [
                Icon(
                  Iconsax.car,
                  size: 20.h,
                ),
                horizontalGap(10.w),
                Icon(
                  Iconsax.airplane,
                  size: 20.h,
                ),
              ],
            ),
          ],
        ),
        verticalGap(10.h),
        Text(
          'Getting there from [Name of Airport]',
          style: appTextStyle12(context),
        ),
        verticalGap(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Taxi',
              style: appTextStyle12(context),
            ),
            Text(
              '24 minutes',
              style: appTextStyle12(context),
            )
          ],
        ),
        verticalGap(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Around the property*',
              style: appTextStyle12500(context),
            ),
            horizontalGap(10.w),
            Icon(
              Iconsax.airplane,
              size: 20.h,
            ),
          ],
        ),
        verticalGap(10.h),
        Text(
          'Taxi',
          style: appTextStyle12(context),
        ),
        verticalGap(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Chills',
              style: appTextStyle12(context),
            ),
            Text(
              '449 ft',
              style: appTextStyle12(context),
            )
          ],
        ),
        verticalGap(10.h),
        Text(
          '*All distances are measured in straight lines. Actual travel distances may vary.',
          style: appTextStyle12(context),
        ),
        verticalGap(10.h),
        const Divider()
      ],
    );
  }
}

class PoliciesWidget extends StatelessWidget {
  const PoliciesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Policies',
          style: appTextStyle14700(context),
        ),
        verticalGap(10.h),
        Text(
          'Check-in from 10:00 AM until 12:00 AM',
          style: appTextStyle12(context),
        ),
        Text(
          'Check-in from 10:00 AM until 12:00 AM',
          style: appTextStyle12(context),
        ),
        verticalGap(10.h),
        Row(
          children: [
            Container(
              height: 21.h,
              width: 32.w,
              decoration: BoxDecoration(
                color: GColors.mainGreenColor,
                borderRadius: BorderRadius.circular(3.dg),
              ),
              child: Center(
                child: Text(
                  'Free',
                  style: TextStyle(
                    fontFamily: 'SFPRODISPLAYREGULAR',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: GColors.whiteColor,
                  ),
                ),
              ),
            ),
            horizontalGap(10.w),
            Text(
              'WiFi is available in all areas and is free of charge',
              style: appTextStyle12(context),
            ),
          ],
        ),
        verticalGap(10.h),
        Row(
          children: [
            Container(
              height: 21.h,
              width: 32.w,
              decoration: BoxDecoration(
                color: GColors.mainGreenColor,
                borderRadius: BorderRadius.circular(3.dg),
              ),
              child: Center(
                child: Text(
                  'Free',
                  style: TextStyle(
                    fontFamily: 'SFPRODISPLAYREGULAR',
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: GColors.whiteColor,
                  ),
                ),
              ),
            ),
            horizontalGap(10.w),
            Text(
              'Free private parking is available on site (no reservation)',
              style: appTextStyle12(context),
            ),
          ],
        ),
        verticalGap(10.h),
        Text(
          'No booking fees',
          style: appTextStyle12(context),
        ),
        verticalGap(20.h),
        const AppTextButton(text: 'See policies of the property')
      ],
    );
  }
}

class AllRelatedTextWidget extends StatelessWidget {
  final String title;
  final String description;
  final String textButton;
  const AllRelatedTextWidget({
    super.key,
    required this.title,
    required this.description,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: appTextStyle14700(context),
        ),
        verticalGap(10.h),
        Text(
          description,
          style: appTextStyle12(context),
        ),
        verticalGap(20.h),
        AppTextButton(text: textButton),
        verticalGap(10.h),
        const Divider(),
        verticalGap(10.h),
      ],
    );
  }
}

class AllRelatedTextWidget2 extends StatelessWidget {
  final String title;
  final String description;

  const AllRelatedTextWidget2({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: appTextStyle14700(context),
        ),
        verticalGap(10.h),
        Text(
          description,
          style: appTextStyle12(context),
        ),
        const Divider(),
        verticalGap(10.h),
      ],
    );
  }
}

class AskQuestionWidget extends StatelessWidget {
  const AskQuestionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: isDarkMode(context) ? GColors.whiteColor : GColors.mainColor,
            ),
            borderRadius: BorderRadius.circular(10.dg),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Iconsax.message_question,
                size: 24.h,
                color: isDarkMode(context) ? GColors.whiteColor : GColors.mainColor,
              ),
              horizontalGap(10.w),
              Text(
                'Ask question',
                style: appTextStyle14600(context, GColors.mainColor),
              )
            ],
          ),
        ),
        verticalGap(10.h),
        Text(
          'Instant answer to most questions',
          style: appTextStyle12(
            context,
          ),
        )
      ],
    );
  }
}

class GuestReviews extends StatelessWidget {
  const GuestReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalGap(10.h),
        Text(
          'Guest reviews',
          style: appTextStyle14700(context),
        ),
        verticalGap(10.w),
        Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            height: 36.h,
            width: 38.w,
            decoration: BoxDecoration(
              color: GColors.goldColor,
              borderRadius: BorderRadius.circular(10.dg),
            ),
            child: Center(
              child: Text(
                '8.4',
                style: TextStyle(
                  fontFamily: 'SFPRODISPLAYREGULAR',
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp,
                  color: GColors.whiteColor,
                ),
              ),
            ),
          ),
          horizontalGap(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Very good',
                style: appTextStyle12600(context),
              ),
              Text(
                'See all 233 reviews',
                style: appTextStyle12(context),
              ),
            ],
          ),
        ]),
        verticalGap(10.h),
        const Divider(),
        verticalGap(10.h),
      ],
    );
  }
}

class ComfortAndPriorityContainer extends StatelessWidget {
  const ComfortAndPriorityContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 59.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(
          color: GColors.hintTextColor,
        ),
        borderRadius: BorderRadius.circular(10.dg),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Icon(
            Iconsax.house_2,
            size: 24.h,
          ),
          horizontalGap(10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Your comfort, our priority',
                style: appTextStyle12600(context),
              ),
              Text(
                'A home away from home',
                style: appTextStyle12(context),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class StrokedText extends StatelessWidget {
  const StrokedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'NGN315,780',
      style: TextStyle(
        fontFamily: 'SFPRODISPLAYREGULAR',
        fontWeight: FontWeight.w500,
        fontSize: 12.sp,
        color: GColors.primaryRedColor,
        decoration: TextDecoration.lineThrough,
        decorationColor: GColors.primaryRedColor,
      ),
    );
  }
}

class DealsContainer extends StatelessWidget {
  final Color color;
  final String text;
  const DealsContainer({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.dg),
      ),
      child: Center(
        child: Text(text,
            style: TextStyle(
              fontFamily: 'SFPRODISPLAYREGULAR',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: GColors.whiteColor,
            )),
      ),
    );
  }
}

class TopRated extends StatelessWidget {
  final Color color;
  final String text;
  const TopRated({
    super.key,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50.dg),
      ),
      child: Center(
        child: Text(text,
            style: TextStyle(
              fontFamily: 'SFPRODISPLAYREGULAR',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: GColors.mainColor,
            )),
      ),
    );
  }
}

class HomeDetailAppBarIcons extends StatelessWidget {
  final IconData icon;
  const HomeDetailAppBarIcons({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      width: 28.w,
      decoration: BoxDecoration(
        color: GColors.whiteColor,
        borderRadius: BorderRadius.circular(5.dg),
      ),
      child: Icon(
        icon,
        size: 20.h,
      ),
    );
  }
}
