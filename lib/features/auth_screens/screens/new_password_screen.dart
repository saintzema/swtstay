import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:swtstay/features/auth_screens/widgets/label_text.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/utils/validators/validators.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textfields.dart';
import 'package:swtstay/widgets/textstyles.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newPasswordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalGap(52.h),
            const CustomBigText(
              text: "Reset password",
            ),
            verticalGap(10.h),
            const CustomText(
              text: "Kindly provide your email address",
            ),
            verticalGap(20.h),
            LabelText(
              context: context,
              label: "New password",
            ),
            verticalGap(10.h),
            CustomTextField(
              hintText: 'Enter your email',
              controller: newPasswordController,
              validator: (value) => validatePassword(value),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
            verticalGap(20.h),
            LabelText(
              context: context,
              label: "Confirm password",
            ),
            verticalGap(10.h),
            CustomTextField(
              hintText: 'Enter your email',
              controller: confirmPasswordController,
              validator: (value) => validatePassword(value),
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
            verticalGap(48.h),
            CustomButton(
              text: 'Submit',
              onTap: () {
                navigateToScreen(context, const PasswordChanged());
              },
            ),
            verticalGap(20.h),
          ],
        ),
      ),
    );
  }
}

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // verticalGap(52.h),
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: Lottie.network(
                  'https://lottiefiles.com/animations/rocket-8jeBTKruqi'),
            ),
            const CustomBigText(
              text: "Password changed",
            ),
            verticalGap(10.h),
            const CustomText(
              text: "Your password was changed successfully",
            ),
            verticalGap(20.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: isDarkMode(context)
                        ? GColors.grayColor
                        : GColors.mainColor,
                  ),
                  borderRadius: BorderRadius.circular(10.dg)),
              child: Text(
                'Proceed to login',
                style: appTextStyle14(context, GColors.mainColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
