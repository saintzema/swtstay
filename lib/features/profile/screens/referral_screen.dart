import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Referrals',
              style: mediumTextStyle700(context, GColors.mainBlackTextColor),
            ),
            const Divider(),
            verticalGap(10.h),
            const ReferContainer(),
            verticalGap(20.h),
            Text(
              'Share unique invitation link',
              style: appTextStyle14600(context),
            ),
            verticalGap(12.h),
            const ShareInvitationLink(),
            verticalGap(12.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.dg),
                color: GColors.avarterBGColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'How it works:',
                    style: appTextStyle12600(
                      context,
                      GColors.mainBlackTextColor,
                    ),
                  ),
                  verticalGap(6.h),
                  Text(
                    '1. Share your unique referral link with friends.',
                    style: appTextStyle12(
                      context,
                      GColors.mainBlackTextColor,
                    ),
                  ),
                  Text(
                    '2. Share your unique referral link with friends.',
                    style: appTextStyle12(
                      context,
                      GColors.mainBlackTextColor,
                    ),
                  ),
                  Text(
                    '3 Share your unique referral link with friends.',
                    style: appTextStyle12(
                      context,
                      GColors.mainBlackTextColor,
                    ),
                  ),
                ],
              ),
            ),
            verticalGap(20.h),
            Text(
              'Invited guest (0)',
              style: appTextStyle16700(
                context,
              ),
            ),
            verticalGap(20.h),
            Center(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage(GImage.emptyReferralImg),
                  ),
                  verticalGap(20.h),
                  Text(
                    'You have not referred anyone yet',
                    style: appTextStyle14500(context, GColors.hintTextColor),
                  ),
                  Text(
                    'Invite your friends and earn a 10% discount on\nyour next hotel booking',
                    style: appTextStyle12(
                      context,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShareInvitationLink extends StatelessWidget {
  const ShareInvitationLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          height: 52.h,
          width: 270.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.dg),
            border: Border.all(
              color: GColors.grayColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200.w,
                child: Text(
                  'https://dummyforreferralcode.com',
                  style: appTextStyle14(context),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              horizontalGap(10.w),
              Icon(
                Iconsax.copy,
                size: 20.h,
              )
            ],
          ),
        ),
        horizontalGap(10.w),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Share'),
          ),
        )
      ],
    );
  }
}

class ReferContainer extends StatelessWidget {
  const ReferContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132.h,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              GImage.refer1,
            ),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Refer & Get 10% off\nbookings',
              style: appTextStyle16700(context, GColors.mainBlackColor),
            ),
            Text(
              'Refer & Get 10% off\nbookings',
              style: appTextStyle12(context, GColors.mainBlackColor),
            )
          ],
        ),
      ),
    );
  }
}
