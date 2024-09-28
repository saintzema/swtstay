import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Favourites',
                  style: mediumTextStyle700(context, GColors.mainBlackTextColor),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.dg),
                    color: isDarkMode(context) ? GColors.mainBlackColor : GColors.avarterBGColor,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                  child: Text(
                    'Clear all',
                    style: appTextStyle12(context),
                  ),
                ),
              ],
            ),
            const Divider(),
            Column(
              children: [
                verticalGap(20.h),
                Image.asset(
                  GImage.emptyFavouriteImg,
                ),
                Text(
                  'Nothing to show yet',
                  style: appTextStyle16700(context),
                ),
                verticalGap(8.h),
                Text(
                  textAlign: TextAlign.center,
                  'No need to worry. When you add a hotel to your list of saved hotels, it’ll appear here.',
                  style: appTextStyle12(context),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
