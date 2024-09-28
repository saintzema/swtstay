import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textfields.dart';
import 'package:swtstay/widgets/textstyles.dart';

class PhoneNumberField extends StatelessWidget {
  final TextEditingController phoneController;
  final void Function(CountryCode)? onChanged;
  const PhoneNumberField(
      {super.key, required this.phoneController, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
                color: isDarkMode(context)
                    ? GColors.mainBlackTextColor
                    : GColors.avarterBGColor,
                borderRadius: BorderRadius.circular(10.dg)),
            child: Row(
              children: [
                CountryCodePicker(
                  boxDecoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.dg)),
                  onChanged: onChanged,
                  initialSelection: 'NG',
                  favorite: const ['+234', 'NG'],
                  textStyle: appTextStyle12(context),
                  showCountryOnly: false,
                  flagWidth: 20,
                  padding: EdgeInsets.zero,
                  showOnlyCountryWhenClosed: false,
                  alignLeft: false,
                ),
                Icon(
                  Iconsax.arrow_down_1,
                  size: 20.h,
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: CustomTextField(
              hintText: 'Phone number',
              keyboardType: TextInputType.phone,
              controller: phoneController),
        ),
      ],
    );
  }
}
