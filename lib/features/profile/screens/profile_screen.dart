import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/profile/profile_widgets/profile_widget.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Profile',
              style: mediumTextStyle700(context, GColors.mainBlackTextColor),
            ),
            Text(
              'Enjoy your booking experience',
              style: appTextStyle14(context),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 268.h,
                  width: double.maxFinite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(
                        child: CircleAvatar(
                          radius: 80,
                          child: Icon(
                            Iconsax.user,
                            size: 100,
                          ),
                        ),
                      ),
                      verticalGap(20.h),
                      Text(
                        'Johnny Doe',
                        style: appTextStyle14700(context),
                      ),
                      verticalGap(10.h),
                      Text(
                        'example@email.com',
                        style: appTextStyle12(context),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 80.h,
                  right: 120.w,
                  child: CircleAvatar(
                    radius: 24.dg,
                    backgroundColor: GColors.whiteColor,
                    child: const Icon(Iconsax.edit),
                  ),
                )
              ],
            ),
            verticalGap(10.h),
            ProfileTiles(ontap: () => Navigator.pushNamed(context, '/personalInfoScreen'), icon: Iconsax.user_edit, text: 'Personal information'),
            ProfileTiles(ontap: () => Navigator.pushNamed(context, '/favouritesScreen'), icon: Iconsax.setting, text: 'Favourites'),
            ProfileTiles(ontap: () => Navigator.pushNamed(context, '/settingScreen'), icon: Iconsax.setting, text: 'Settings'),
            const ProfileTiles(icon: Iconsax.note_favorite, text: 'Learn more about SwtStay'),
            ProfileTiles(ontap: () => Navigator.pushNamed(context, '/referScreen'), icon: Iconsax.setting, text: 'Refer & Earn'),
            ProfileTiles(ontap: () => Navigator.pushNamed(context, '/getHelpScreen'), icon: Iconsax.info_circle, text: 'Get help'),
            const ProfileTiles(icon: Iconsax.note_text, text: 'Terms of Use'),
            const ProfileTiles(icon: Iconsax.note_text, text: 'Privacy policy'),
            verticalGap(10.h),
            Text(
              'Version 1.0.0',
              style: appTextStyle10(context),
            )
          ],
        ),
      ),
    );
  }
}
