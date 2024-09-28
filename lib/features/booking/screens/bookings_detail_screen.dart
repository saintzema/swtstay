import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/auth_screens/widgets/social_button_widget.dart';
import 'package:swtstay/features/booking/booking_widgets/booking_detail_widget.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class BookingsDetailScreen extends StatefulWidget {
  const BookingsDetailScreen({super.key});

  @override
  State<BookingsDetailScreen> createState() => _BookingsDetailScreenState();
}

class _BookingsDetailScreenState extends State<BookingsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: GColors.whiteColor),
        backgroundColor: GColors.mainColor,
        title: Text(
          'Booking information',
          style: appTextStyle16700(context, GColors.whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your accommodation booking',
                style: appTextStyle16700(
                  context,
                ),
              ),
              verticalGap(12.h),
              Text(
                'We sent your confirmation email to email@example.com',
                style: appTextStyle12(
                  context,
                ),
              ),
              verticalGap(12.h),
              Container(
                height: 70.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.dg),
                  color: GColors.greenColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Booking number',
                      style: appTextStyle12600(context, GColors.mainBlackTextColor),
                    ),
                    verticalGap(10.h),
                    Text(
                      '563774',
                      style: appTextStyle12(context, GColors.hintTextColor),
                    )
                  ],
                ),
              ),
              verticalGap(12.h),
              const Divider(),
              verticalGap(12.h),
              Text(
                'You booked [x] [room, apartment]',
                style: appTextStyle16700(
                  context,
                ),
              ),
              verticalGap(12.h),
              Text(
                'Title of Room/Apartment',
                style: appTextStyle12600(context),
              ),
              verticalGap(12.h),
              const BookingIconAndText(
                icon: Iconsax.user,
                title: 'John doe',
                subtitle: 'Type of room * 2 adult',
              ),
              const BookingIconAndText(
                icon: Iconsax.user,
                title: 'Non refundable',
                subtitle: 'Note that if canceled, modified, or in case of no-show, the total price of the reservation will be charged',
              ),
              TextButton(onPressed: () {}, child: const AppTextButton(text: 'View apartment details')),
              verticalGap(20.h),
              Text(
                'Booking details',
                style: appTextStyle16700(
                  context,
                ),
              ),
              verticalGap(10.h),
              const BookingIconAndText2(
                icon: Iconsax.calendar_2,
                title: 'May 2 - May 5',
                subtitle: 'Check-in from 12:00 PM until 11:00 PM',
                subtitle2: 'Check-in from 12:00 PM until 11:00 PM',
                buttonText: 'Change date',
              ),
              verticalGap(10.h),
              const YourArrival(
                icon: Iconsax.clock,
                title: 'Your arrival time',
                subtitle: 'Share your arrival time so the host can arrange a smooth\ncheck-in with you',
                buttonText: 'Add arrival time',
              ),
              verticalGap(10.h),
              const PropertyAddress(
                icon: Iconsax.clock,
                title: 'Property address',
                subtitle: 'Dummy text for property address, coordinates,\nCountry',
                buttonText: 'Get direction',
              ),
              verticalGap(10.h),
              Row(
                children: [
                  Icon(
                    Icons.bed,
                    size: 20.h,
                  ),
                  horizontalGap(10.w),
                  Text(
                    'Property facilities',
                    style: appTextStyle12600(context),
                  ),
                ],
              ),
              verticalGap(4.h),
              SizedBox(
                height: 25.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 6.w),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.dg),
                              border: Border.all(color: GColors.hintTextColor),
                            ),
                            child: Text(
                              'internet',
                              style: appTextStyle12(context),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              verticalGap(15.h),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: const AppTextButton(text: "See all"),
              ),
              const Divider(),
              const ContactColumn(),
              const Divider(),
              verticalGap(12.h),
              const SocialButton(
                text: 'Manage booking',
                image: '',
                color: GColors.mainColor,
                textColor: GColors.mainColor,
              ),
              verticalGap(12.h),
              const Divider(),
              verticalGap(12.h),
              const TotalAmountText(),
              verticalGap(12.h),
              const Divider(),
              verticalGap(12.h),
              const PriceInformation(),
              verticalGap(12.h),
              const Divider(),
              verticalGap(12.h),
              const CheckBeforeStay(),
              verticalGap(12.h),
              const Divider(),
              verticalGap(12.h),
              const FrequentlyAskedQuestions(),
              verticalGap(12.h),
              const Divider(),
              verticalGap(12.h),
              const NeedHelp(),
              verticalGap(12.h),
              const ActionsArea(),
              verticalGap(30.h),
              const YesOrNoButtons(),
              verticalGap(20.h),
            ],
          ),
        ),
      ),
    );
  }
}
