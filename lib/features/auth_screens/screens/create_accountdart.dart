import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/auth_screens/widgets/gender_listtile.dart';
import 'package:swtstay/features/auth_screens/widgets/label_text.dart';
import 'package:swtstay/features/auth_screens/widgets/lottie_widget.dart';
import 'package:swtstay/features/auth_screens/widgets/phone_number_widget.dart';
import 'package:swtstay/features/auth_screens/widgets/richtext_widget.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textfields.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  int _shakeCount = 0;
  String selectedCountryCode = '+234';

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

  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final genderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalGap(10.h),
                  const CustomBigText(
                    text: "Setup Account",
                  ),
                  verticalGap(10.h),
                  const CustomText(
                    text: "Let’s create an account in less than a minute",
                  ),
                  verticalGap(20.h),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LabelText(
                              context: context,
                              label: "First name",
                            ),
                            verticalGap(10.h),
                            CustomTextField(
                                hintText: '"First name',
                                controller: firstNameController),
                          ],
                        ),
                      ),
                      horizontalGap(10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LabelText(
                              context: context,
                              label: "Last name",
                            ),
                            verticalGap(10.h),
                            CustomTextField(
                                hintText: 'Last name',
                                controller: lastNameController),
                          ],
                        ),
                      ),
                    ],
                  ),
                  verticalGap(20.h),
                  LabelText(
                    context: context,
                    label: "Email",
                  ),
                  verticalGap(10.h),
                  CustomTextField(
                      hintText: 'Enter your email',
                      controller: emailController),
                  verticalGap(20.h),
                  LabelText(
                    context: context,
                    label: "Phone number",
                  ),
                  verticalGap(10.h),
                  PhoneNumberField(
                    phoneController: phoneController,
                    onChanged: (countryCode) {
                      setState(() {
                        selectedCountryCode = countryCode.dialCode ?? '+234';
                      });
                    },
                  ),
                  verticalGap(20.h),
                  LabelText(
                    context: context,
                    label: "Gender",
                  ),
                  verticalGap(10.h),
                  InkWell(
                    onTap: () => genderBottomSheet(context),
                    child: IgnorePointer(
                      child: CustomTextField(
                          readOnly: true,
                          suffixIcon: Icon(
                            Iconsax.arrow_down_1,
                            size: 28.h,
                          ),
                          hintText: 'Gender',
                          controller: genderController),
                    ),
                  ),
                  verticalGap(20.h),
                  const RegisterSignUpRichText(
                    questionString:
                        'By clicking ‘Create account.’ I agree to SwtStay Terms of Use and ',
                    routeName: 'Privacy policy',
                    routeString: '/privacyPolicy',
                  ),
                  verticalGap(30.h),
                  CustomButton(
                      onTap: () {
                        Navigator.pushNamed(context, '/otpScreen');
                      },
                      text: 'Create account')
                ],
              ),
            ),
            verticalGap(10.h),
            const RegisterSignUpRichText(
              questionString: 'Already have acoount? ',
              routeName: 'Sign In',
              routeString: '/signIn',
            ),
            verticalGap(40.h),
          ],
        ),
      ),
    );
  }

  Future<dynamic> genderBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return GenderListTile(genderController: genderController);
        });
  }
}
