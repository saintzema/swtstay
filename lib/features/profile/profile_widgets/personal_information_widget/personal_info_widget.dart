import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/auth_screens/widgets/gender_listtile.dart';
import 'package:swtstay/features/auth_screens/widgets/label_text.dart';
import 'package:swtstay/features/auth_screens/widgets/phone_number_widget.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textfields.dart';
import 'package:swtstay/widgets/textstyles.dart';

class PersonalInfoWidget extends StatefulWidget {
  const PersonalInfoWidget({super.key});

  @override
  State<PersonalInfoWidget> createState() => _PersonalInfoWidgetState();
}

class _PersonalInfoWidgetState extends State<PersonalInfoWidget> {
  String selectedCountryCode = '+234';

  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final genderController = TextEditingController();
  final dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalGap(10.h),
                  LabelText(
                    context: context,
                    label: "Personal information",
                  ),
                  verticalGap(10.h),
                  const CustomText(
                    text: "Kindly confirm your details to confirm your booking",
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
                            CustomTextField(hintText: '"First name', controller: firstNameController),
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
                            CustomTextField(hintText: 'Last name', controller: lastNameController),
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
                  CustomTextField(hintText: 'Enter your email', controller: emailController),
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
                        // var selectedCountryCode =
                        //     countryCode.dialCode ?? '+234';
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
                  LabelText(
                    context: context,
                    label: "Date of birth",
                  ),
                  verticalGap(10.h),
                  InkWell(
                    onTap: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        barrierColor: Colors.transparent,
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                        builder: (BuildContext context, Widget? child) {
                          return Theme(
                            data: ThemeData.dark().copyWith(
                              // Customize text styles here
                              textTheme: TextTheme(bodyLarge: appTextStyle14(context)
                                  // You can customize other styles as needed
                                  ),
                            ),
                            child: child!,
                          );
                        },
                      );
                      if (pickedDate != null) {
                        dobController.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                        setState(() {
                          dobController.text = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                        }); // Trigger a rebuild to reflect the change in the UI
                      }
                    },
                    child: IgnorePointer(
                      child: CustomTextField(readOnly: true, controller: dobController, hintText: "dd/mm/yy", suffixIcon: const Icon(Icons.calendar_today)),
                    ),
                  ),
                  verticalGap(30.h),
                ],
              ),
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
