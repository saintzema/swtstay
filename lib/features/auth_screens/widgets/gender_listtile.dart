import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class GenderListTile extends StatelessWidget {
  const GenderListTile({
    super.key,
    required this.genderController,
  });

  final TextEditingController genderController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 295.h,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Select gender',
                  style: appTextStyle16(context),
                ),
              ],
            ),
            verticalGap(10.h),
            ListTile(
              onTap: () {
                genderController.text = 'Male';
                Navigator.pop(context);
              },
              title: Text(
                'Male',
                style: appTextStyle14(context),
              ),
            ),
            ListTile(
              onTap: () {
                genderController.text = 'Female';
                Navigator.pop(context);
              },
              title: Text(
                'Female',
                style: appTextStyle14(context),
              ),
            ),
            ListTile(
              onTap: () {
                genderController.text = 'Prefer not to say';
                Navigator.pop(context);
              },
              title: Text(
                'Prefer not to say',
                style: appTextStyle14(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
