import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/auth_screens/widgets/label_text.dart';
import 'package:swtstay/features/auth_screens/widgets/lottie_widget.dart';
import 'package:swtstay/features/auth_screens/widgets/social_button_widget.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/utils/validators/validators.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textfields.dart';
import 'package:swtstay/widgets/textstyles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int _shakeCount = 0;
  bool _showWidgetOne = true; // Track which widget to show
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _animationController = AnimationController(vsync: this);

    // Add a listener to stop the animation after 3 shakes
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _shakeCount++;
        if (_shakeCount < 1) {
          // _animationController.reset();
          _animationController.forward();
        } else {
          _animationController.stop();
        }
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalGap(60.h),
                Container(
                  height: 60.h,
                  alignment: Alignment.centerLeft,
                  child: LottieHand(
                    controller: _animationController,
                    onLoaded: (composition) {
                      _animationController
                        ..duration = composition.duration
                        ..forward();
                    },
                  ),
                ),
                verticalGap(10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomBigText(
                        text: "Sign In",
                      ),
                      verticalGap(10.h),
                      const CustomText(
                        text: "At SwtStay, your satisfaction is our priority",
                      ),
                      verticalGap(20.h),

                      // AnimatedSwitcher to handle the transition between widgets
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        transitionBuilder: (Widget child, Animation<double> animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                        child: _showWidgetOne ? _buildWidgetOne() : _buildWidgetTwo(),
                      ),

                      verticalGap(25.h),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget One
  Widget _buildWidgetOne() {
    return Column(
      key: const ValueKey(1), // Unique key for the widget
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LabelText(
          context: context,
          label: "Email",
        ),
        verticalGap(10.h),
        CustomTextField(
          hintText: 'Enter your email',
          controller: emailController,
          validator: validateEmail,
        ),
        verticalGap(48.h),
        CustomButton(
          text: 'Continue',
          onTap: () {
            if (_formKey.currentState!.validate()) {
              setState(() {
                _showWidgetOne = false; // Switch to widget two
              });
            }
          },
        ),
        verticalGap(20.h),
        // const RegisterSignUpRichText(),
        SocialButton(
            onTap: () {
              Navigator.pushNamed(context, '/createAccount');
            },
            image: GImage.googleIcon,
            text: 'Create account'),
      ],
    );
  }

  // Widget Two
  Widget _buildWidgetTwo() {
    return Column(
      key: const ValueKey(2), // Unique key for the widget
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.dg), border: Border.all(color: isDarkMode(context) ? GColors.hintTextColor : GColors.mainBlackTextColor)),
              child: Row(
                children: [
                  Icon(
                    Iconsax.profile_circle,
                    size: 20.dg,
                  ),
                  horizontalGap(5.w),
                  Text(
                    'example@gmail.com',
                    style: appTextStyle12500(context),
                  )
                ],
              ),
            ),
            horizontalGap(5.w),
            SizedBox(
              height: 30.h,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showWidgetOne = true; // Switch back to widget one
                  });
                },
                style: ElevatedButton.styleFrom(padding: EdgeInsets.only(left: 10.w, right: 10.w)),
                child: Text(
                  'Change',
                  style: appTextStyle12500(context, GColors.whiteColor),
                ),
              ),
            )
          ],
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
            InkWell(
              onTap: () => Navigator.pushNamed(context, '/forgetPassword'),
              child: Text(
                " Forgot password",
                style: appTextStyle12(
                  context,
                ),
              ),
            ),
          ],
        ),
        verticalGap(10.h),
        CustomTextField(
          hintText: 'Enter your password',
          controller: passwordController,
          validator: (value) => Validators.passwordValidator(value),
          suffixIcon: const Icon(Iconsax.eye_slash),
        ),
        verticalGap(48.h),
        CustomButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/bottomNav');
              }
            },
            text: 'Login'),
      ],
    );
  }
}



// String? _validatePassword(String? value) {
//   if (value == null || value.isEmpty) {
//     return 'Please enter your password';
//   }
//   if (value.length < 6) {
//     return 'Password must be at least 6 characters long';
//   }
//   return null;
// }
