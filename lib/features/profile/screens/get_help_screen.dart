import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/textstyles.dart';

class GetHelpScreen extends StatelessWidget {
  const GetHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Send us a message",
                  style: mediumTextStyle700(context, GColors.mainBlackTextColor),
                ),
                verticalGap(48.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Write a message',
                      style: appTextStyle12500(context),
                    ),
                    Text(
                      '0/150',
                      style: appTextStyle12(context),
                    ),
                  ],
                ),
                verticalGap(10.h),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(hintText: 'How and when do I pay?', hintStyle: appTextStyle12K(GColors.hintTextColor)),
                ),
                verticalGap(20.h),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: const Icon(Iconsax.warning_2),
                  ),
                  title: Text(
                    'If we can’t answer your question right away, you can forward it to the property. Make sure not to include any personal info and to follow our guidelines.',
                    style: appTextStyle12(context),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30.h),
              child: const CustomButton(text: 'Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
