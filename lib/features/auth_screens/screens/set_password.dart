import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/utils/validators/validators.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textfields.dart';
import 'package:swtstay/widgets/textstyles.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalGap(52.h),
              const CustomBigText(
                text: "Set password",
              ),
              verticalGap(10.h),
              const CustomText(
                text: "Enable only authorized access to your account",
              ),
              verticalGap(36.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Password",
                    style: appTextStyle14600(
                      context,
                    ),
                  ),
                ],
              ),
              verticalGap(10.h),
              CustomTextField(
                hintText: 'Enter your password',
                controller: passwordController,
                validator: (value) => validatePassword(value),
                suffixIcon: const Icon(Iconsax.eye_slash),
              ),
              verticalGap(48.h),
              const CustomButton(text: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
