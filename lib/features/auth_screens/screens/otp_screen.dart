import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:swtstay/features/auth_screens/screens/set_password.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textstyles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final otpController = TextEditingController();
  Future<void> _openEmailApp() async {
    // Replace the placeholder email address with the actual recipient
    const String recipientEmail = 'recipient@example.com';

    // Construct the mailto URI with the recipient email
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: recipientEmail,
    );

    try {
      if (await canLaunchUrlString(emailLaunchUri.toString())) {
        await launchUrlString(emailLaunchUri.toString());
        // print('Email app launched successfully.');
      } else {
        // print('Could not launch email app for $recipientEmail.');
      }
    } catch (error) {
      // print('Error launching email app: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 94.h,
                width: 200.w,
                child: Image.asset(
                  GImage.otpGif,
                ),
              ),
              verticalGap(10.h),
              const CustomBigText(
                text: "We sent you an OTP",
              ),
              verticalGap(10.h),
              const Text(
                "Kindly enter the 6-digit OTP sent to your mail on exa****@email.com to verify you are human",
                textAlign: TextAlign.center,
              ),
              verticalGap(20.h),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Pinput(
                  length: 6,
                  controller: otpController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Please complete the otp';
                    } else if (value.length == 6) {
                      navigateToScreen(context, const SetPasswordScreen());
                    }
                    return null;
                  },
                  defaultPinTheme: PinTheme(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.dg),
                      border: Border.all(
                          color: isDarkMode(context)
                              ? GColors.grayColor
                              : GColors.mainBlackTextColor),
                    ),
                  ),
                ),
              ),
              verticalGap(20.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                decoration: BoxDecoration(
                    color: isDarkMode(context)
                        ? GColors.mainBlackTextColor
                        : GColors.grayColor,
                    borderRadius: BorderRadius.circular(50.dg)),
                child: Text(
                  '60 sec',
                  style: appTextStyle14(context),
                ),
              ),
              verticalGap(30.h),
              InkWell(
                onTap: _openEmailApp,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: isDarkMode(context)
                            ? GColors.grayColor
                            : GColors.mainColor,
                      ),
                      borderRadius: BorderRadius.circular(10.dg)),
                  child: Text(
                    'Open email app',
                    style: appTextStyle14(context, GColors.mainColor),
                  ),
                ),
              ),
              verticalGap(50.h),
              // ToggleSwitch()
            ],
          ),
        ),
      ),
    );
  }
}
