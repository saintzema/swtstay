import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class BookingPropertyCard extends StatelessWidget {
  const BookingPropertyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.dg),
      height: 134.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(color: GColors.cardBGcolor),
        borderRadius: BorderRadius.circular(10.dg),
      ),
      child: Row(
        children: [
          Container(
            width: 100.w,
            margin: EdgeInsets.only(right: 10.w),
            decoration: BoxDecoration(
              border: Border.all(color: GColors.cardBGcolor),
              borderRadius: BorderRadius.circular(5.dg),
              image: const DecorationImage(
                  image: AssetImage(
                    GImage.roomImg,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Title of Property/Hotel',
                style: appTextStyle14600(context),
              ),
              verticalGap(6.h),
              Row(
                children: [
                  Icon(
                    Iconsax.calendar_2,
                    size: 16.h,
                  ),
                  horizontalGap(5.w),
                  Text(
                    'May 3 - May 5',
                    style: appTextStyle12(context),
                  )
                ],
              ),
              verticalGap(6.h),
              Row(
                children: [
                  Icon(
                    Icons.bed,
                    size: 16.h,
                  ),
                  horizontalGap(5.w),
                  Text(
                    'One bedroom apartment',
                    style: appTextStyle12(context),
                  )
                ],
              ),
              verticalGap(6.h),
              Text(
                'NGN56,427',
                style: appTextStyle14600(context),
              )
            ],
          )
        ],
      ),
    );
  }
}

final List<String> bookingTitles = ['Active', 'Past', 'Cancel'];

class BookingOptions extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const BookingOptions({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 6.h),
          decoration: BoxDecoration(
            border: Border.all(
                color: isSelected
                    ? GColors.cardBGcolor
                    : isDarkMode(context)
                        ? GColors.mainBlackTextColor
                        : GColors.whiteColor),
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Text(
            text,
            style: appTextStyle14(context),
          ),
        ),
      ),
    );
  }
}
