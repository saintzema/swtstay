import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/home/screens/reservation_screen.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class BranchesScreen extends StatelessWidget {
  const BranchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: GColors.whiteColor),
        backgroundColor: GColors.mainColor,
        title: Text(
          'Select room',
          style: mediumTextStyle700(context, GColors.whiteColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalGap(20.h),
            Text(
              'Available rooms',
              style: appTextStyle14700(context),
            ),
            verticalGap(10.h),
            Text(
              'Displaying available rooms in the facility',
              style: appTextStyle12(context),
            ),
            verticalGap(20.h),
            SizedBox(
              height: 620.h,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => navigateToScreen(context, const ReservationScreen()),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 25.h),
                        child: const BranchRoomWidget(),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class BranchRoomWidget extends StatelessWidget {
  const BranchRoomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              margin: EdgeInsets.only(right: 10.w),
              decoration: BoxDecoration(
                // border: Border.all(color: GColors.cardBGcolor),
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
                    Row(
                      children: [
                        Icon(
                          Icons.bed,
                          size: 16.h,
                        ),
                        horizontalGap(5.w),
                        Text(
                          '1 queen bed',
                          style: appTextStyle12(context),
                        )
                      ],
                    ),
                    horizontalGap(10.w),
                    Row(
                      children: [
                        Icon(
                          Icons.wifi,
                          size: 16.h,
                        ),
                        horizontalGap(5.w),
                        Text(
                          'Free Wifi',
                          style: appTextStyle12(context),
                        )
                      ],
                    ),
                    horizontalGap(10.w),
                    Row(
                      children: [
                        Icon(
                          Icons.tv,
                          size: 16.h,
                        ),
                        horizontalGap(5.w),
                        Text(
                          'TV',
                          style: appTextStyle12(context),
                        )
                      ],
                    ),
                  ],
                ),
                verticalGap(6.h),
                Text(
                  'Only 1 left on SwtStay.com',
                  style: appTextStyle12500(context),
                )
              ],
            )
          ],
        ),
        verticalGap(12.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          height: 38.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            border: Border.all(color: GColors.hintTextColor),
            borderRadius: BorderRadius.circular(5.dg),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Non refundable',
                style: appTextStyle12500(context),
              ),
              Row(
                children: [
                  Text(
                    'from',
                    style: appTextStyle12500(context),
                  ),
                  horizontalGap(10.w),
                  Text(
                    'NGN34,000',
                    style: appTextStyle14700(context),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
