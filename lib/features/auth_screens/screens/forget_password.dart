import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/features/auth_screens/widgets/label_text.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textfields.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
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
                label: "Email",
              ),
              verticalGap(10.h),
              CustomTextField(
                  hintText: 'Enter your email', controller: emailController),
              verticalGap(48.h),
              CustomButton(
                text: 'Continue',
                onTap: () {
                  Navigator.pushNamed(context, '/newPassword');
                },
              ),
              verticalGap(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
