import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class YesOrNoButtons extends StatelessWidget {
  const YesOrNoButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Do you think the app is useful?'),
        verticalGap(10.h),
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.dg), color: isDarkMode(context) ? GColors.grayColor : null),
            height: 56.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: const Text(
                    'Yes',
                    style: TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', color: GColors.mainColor, fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  height: 56.h,
                  width: 2.w,
                  color: GColors.hintTextColor,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30.w),
                  child: const Text(
                    'No',
                    style: TextStyle(fontFamily: 'SFPRODISPLAYREGULAR', color: GColors.mainColor, fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}

class ActionsArea extends StatelessWidget {
  const ActionsArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Actions',
          style: appTextStyle14700(context),
        ),
        SizedBox(
          height: 30.h,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Iconsax.document_download,
              size: 16.h,
            ),
            title: const AppTextButton(text: 'Save for offline use'),
          ),
        ),
        SizedBox(
          height: 30.h,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Iconsax.repeat,
              size: 16.h,
            ),
            title: const AppTextButton(text: 'Resend confirmation email'),
          ),
        ),
        SizedBox(
          height: 30.h,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Iconsax.send_2,
              size: 16.h,
            ),
            title: const AppTextButton(text: 'Share booking confirmation'),
          ),
        ),
        SizedBox(
          height: 30.h,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Iconsax.send_1,
              size: 16.h,
            ),
            title: const AppTextButton(text: 'Share this property'),
          ),
        ),
        SizedBox(
          height: 30.h,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Iconsax.headphone,
              size: 16.h,
            ),
            title: const AppTextButton(text: 'Contact customer service'),
          ),
        )
      ],
    );
  }
}

class NeedHelp extends StatelessWidget {
  const NeedHelp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Need help',
          style: appTextStyle14700(context),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Padding(
            padding: EdgeInsets.only(bottom: 40.h),
            child: Icon(
              Iconsax.info_circle,
              size: 16.h,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'We’re here to help answer your questions and manage your booking',
                style: appTextStyle12(context),
              ),
              verticalGap(12.h),
              const AppTextButton(text: 'Contact customer service')
            ],
          ),
        )
      ],
    );
  }
}

class FrequentlyAskedQuestions extends StatelessWidget {
  const FrequentlyAskedQuestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Frequently asked questions',
          style: appTextStyle14700(context),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            Iconsax.message_2,
            size: 20.h,
          ),
          title: Text(
            ' If i need to cancel my bookings, will I pay a fee?',
            style: appTextStyle12(context),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 20.h,
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            Iconsax.message_2,
            size: 20.h,
          ),
          title: Text(
            ' If i need to cancel my bookings, will I pay a fee?',
            style: appTextStyle12(context),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 20.h,
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            Iconsax.message_2,
            size: 20.h,
          ),
          title: Text(
            ' If i need to cancel my bookings, will I pay a fee?',
            style: appTextStyle12(context),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 20.h,
          ),
        ),
        verticalGap(12),
        const AppTextButton(text: 'View all frequently asked questions')
      ],
    );
  }
}

class CheckBeforeStay extends StatelessWidget {
  const CheckBeforeStay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Check before your stay',
          style: appTextStyle14700(context),
        ),
        verticalGap(8.h),
        Text(
          'This property does not accommodate pets or similar parties',
          style: appTextStyle12(context),
        ),
        verticalGap(12.h),
        const AppTextButton(text: 'View more')
      ],
    );
  }
}

class PriceInformation extends StatelessWidget {
  const PriceInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price information',
          style: appTextStyle12600(context),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Padding(
            padding: EdgeInsets.only(bottom: 40.h),
            child: Icon(
              Iconsax.money,
              size: 16.h,
            ),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Includes NGN7,288 in taxes and fees',
                style: appTextStyle12(context),
              ),
              Text(
                'City tax NGN820',
                style: appTextStyle12(context),
              ),
              Text(
                'VAT NGN6,382',
                style: appTextStyle12(context),
              ),
            ],
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            Iconsax.money_change,
            size: 16.h,
          ),
          title: Text(
            'Keep in mind that your card issuer may charge you',
            style: appTextStyle12(context),
          ),
        ),
        const AppTextButton(text: 'Hide details')
      ],
    );
  }
}

// CONTACT PROPERTY AND CALL AREA *********************************
class ContactColumn extends StatelessWidget {
  const ContactColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalGap(12.h),
        Text(
          'Contact the property',
          style: appTextStyle12600(context),
        ),
        verticalGap(10.h),
        Text(
          'Discuss changes to your booking or ask about payments and refunds',
          style: appTextStyle12(context),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Padding(
            padding: EdgeInsets.only(bottom: 25.h),
            child: Icon(
              Iconsax.call,
              size: 20.h,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppTextButton(text: 'Call +2347012345678'),
              verticalGap(12.h),
              const AppTextButton(
                text: 'Use a different method',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TotalAmountText extends StatelessWidget {
  const TotalAmountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total',
          style: appTextStyle14700(context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'NGN57,324',
              style: appTextStyle16700(context),
            ),
            Text(
              'Includes taxes and fees',
              style: appTextStyle12(context),
            )
          ],
        )
      ],
    );
  }
}

class BookingIconAndText extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  const BookingIconAndText({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20.h,
          ),
        ],
      ),
      title: Text(
        title,
        style: appTextStyle12600(context),
      ),
      subtitle: Text(
        subtitle,
        style: appTextStyle12(context),
      ),
    );
  }
}

class BookingIconAndText2 extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final String subtitle2;
  final String buttonText;

  const BookingIconAndText2({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.subtitle2,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20.h,
          ),
          horizontalGap(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: appTextStyle12600(context),
              ),
              verticalGap(4),
              Text(
                subtitle,
                style: appTextStyle12(context),
              ),
              verticalGap(4),
              Text(
                subtitle2,
                style: appTextStyle12(context),
              ),
              SizedBox(
                height: 15.h,
              ),
              AppTextButton(
                text: buttonText,
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}

class YourArrival extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final String buttonText;

  const YourArrival({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20.h,
          ),
          horizontalGap(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: appTextStyle12600(context),
              ),
              verticalGap(4),
              Text(
                subtitle,
                style: appTextStyle12(context),
              ),
              verticalGap(15),
              AppTextButton(
                text: buttonText,
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}

// PROPERTY ADDRESS****************************************
class PropertyAddress extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String subtitle;
  final String buttonText;

  const PropertyAddress({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20.h,
          ),
          horizontalGap(10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: appTextStyle12600(context),
              ),
              verticalGap(4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subtitle,
                    style: appTextStyle12(context),
                  ),
                  horizontalGap(10.w),
                  Icon(
                    Iconsax.copy,
                    size: 16.h,
                  )
                ],
              ),
              verticalGap(15),
              AppTextButton(
                text: buttonText,
              ),
            ],
          ),
        ],
      ),
    ]);
  }
}

class AppTextButton extends StatelessWidget {
  final String text;
  const AppTextButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.h),
      child: GestureDetector(
        onTap: () {},
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'SFPRODISPLAYREGULAR',
            fontSize: 12.sp,
            color: isDarkMode(context) ? const Color.fromARGB(255, 146, 185, 240) : GColors.mainColor,
          ),
        ),
      ),
    );
  }
}
