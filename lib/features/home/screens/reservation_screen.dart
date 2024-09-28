import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/auth_screens/widgets/social_button_widget.dart';
import 'package:swtstay/features/booking/booking_widgets/booking_detail_widget.dart';
import 'package:swtstay/features/booking/screens/complete_booking_screen.dart';
import 'package:swtstay/features/home/home_widgets/home_detail_widget.dart';
import 'package:swtstay/features/home/screens/branches_screen.dart';
import 'package:swtstay/features/home/screens/home_detail_screen.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/textstyles.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  final int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: GColors.whiteColor),
        backgroundColor: GColors.mainColor,
        actions: [
          const HomeDetailAppBarIcons(
            icon: Iconsax.heart,
          ),
          horizontalGap(10.w),
          const HomeDetailAppBarIcons(
            icon: Iconsax.share,
          ),
          horizontalGap(16.w),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: GColors.mainColor,
                  height: 220.h,
                  width: double.maxFinite,
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(GImage.houseImg),
                ),
                Padding(
                  padding: EdgeInsets.all(16.dg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BranchRoomWidget(),
                      verticalGap(12.h),
                      SocialButton(
                          onTap: () {
                            showModalBottomSheet<dynamic>(
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return const SizedBox(child: ReservationBottomSheetWidget());
                                });
                          },
                          text: 'Show all 2 price options',
                          image: ''),
                      verticalGap(12.h),
                      Text(
                        'Most popular amenities',
                        style: appTextStyle14700(context),
                      ),
                      verticalGap(12.h),
                      const ComfortAndPriorityContainer(),
                      verticalGap(12.h),
                      const AllRelatedTextWidget2(
                        title: 'Room description',
                        description:
                            'Location description Figma ipsum component variant main layer. Vector resizing subtract rectangle line fill share content rough hand. Figma ipsum component variant main layer. Vector resizing subtract rectangle line fill share content rough hand.',
                      ),
                      const AllRelatedTextWidget2(
                        title: 'Available bed type',
                        description: ' 1 queen bed 60 -60 inches wide',
                      ),
                      Text(
                        'Most popular facilities',
                        style: appTextStyle14700(context),
                      ),
                      verticalGap(10),
                      Wrap(
                        // Set the spacing between each container
                        spacing: 10.0,
                        // Set the run spacing between each row of containers
                        runSpacing: 10.0,
                        children: List.generate(10, (index) {
                          return decoratedContainer(index, context);
                        }),
                      ),
                      verticalGap(10.h),
                      Text(
                        'What guests have to say',
                        style: appTextStyle14700(context),
                      ),
                      verticalGap(20.h),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: const CircleAvatar(),
                                  title: Text(
                                    'Peremobowei Agiddi',
                                    style: appTextStyle14600(context),
                                  ),
                                  subtitle: Text(
                                    'Lagos, Nigeria',
                                    style: appTextStyle10(context),
                                  ),
                                ),
                                Text(
                                  'Figma ipsum component variant main layer. Variant follower and boolean layer flatten editor main font underline.',
                                  style: appTextStyle12(context),
                                ),
                                verticalGap(10.h),
                                const Divider(),
                              ],
                            );
                          }),
                      const FrequentlyAskedQuestions(),
                    ],
                  ),
                ),
                verticalGap(80.h)
              ],
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              color: isDarkMode(context) ? GColors.mainBlackTextColor : GColors.whiteColor,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 25.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalGap(10.h),
                    Text(
                      'NGN34.000',
                      style: appTextStyle14700(context),
                    ),
                    Text(
                      'Include taxes and fees',
                      style: appTextStyle12(context),
                    ),
                    verticalGap(10.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(380.w, 56.h),
                      ),
                      onPressed: () {
                        navigateToScreen(context, const CompleteBookingScreen());
                      },
                      child: const Text(
                        'Make reservation',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReservationBottomSheetWidget extends StatelessWidget {
  const ReservationBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.dg),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalGap(10.h),
              Text(
                'Select price options',
                style: appTextStyle16700(context),
              ),
              verticalGap(10.h),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.dg),
                    border: Border.all(
                      color: GColors.avarterBGColor,
                    )),
                padding: EdgeInsets.all(16.dg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Title of Property/Hotel',
                          style: appTextStyle14600(context),
                        ),
                        const Icon(Icons.check_circle_outline_rounded)
                      ],
                    ),
                    verticalGap(6.h),
                    Row(
                      children: [
                        Icon(
                          Iconsax.user,
                          size: 16.h,
                        ),
                        horizontalGap(5.w),
                        Text(
                          '1 Adult, 1 Child',
                          style: appTextStyle12(context),
                        )
                      ],
                    ),
                    verticalGap(6.h),
                    Row(
                      children: [
                        Icon(
                          Icons.bed,
                          size: 16.h,
                        ),
                        horizontalGap(5.w),
                        Text(
                          '1 queen bed',
                          style: appTextStyle12(context),
                        )
                      ],
                    ),
                    verticalGap(10.w),
                    Text(
                      'For 1 night',
                      style: appTextStyle12500(context),
                    ),
                    verticalGap(10.w),
                    Text(
                      'NGN43,4959',
                      style: appTextStyle14700(context),
                    )
                  ],
                ),
              ),
              verticalGap(20.h),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.dg), border: Border.all(color: GColors.avarterBGColor)),
                padding: EdgeInsets.all(16.dg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Title of Property/Hotel',
                          style: appTextStyle14600(context),
                        ),
                        const Icon(Icons.check_circle_outline_rounded)
                      ],
                    ),
                    verticalGap(6.h),
                    Row(
                      children: [
                        Icon(
                          Iconsax.user,
                          size: 16.h,
                        ),
                        horizontalGap(5.w),
                        Text(
                          '1 Adult, 1 Child',
                          style: appTextStyle12(context),
                        )
                      ],
                    ),
                    verticalGap(6.h),
                    Row(
                      children: [
                        Icon(
                          Icons.bed,
                          size: 16.h,
                        ),
                        horizontalGap(5.w),
                        Text(
                          '1 queen bed',
                          style: appTextStyle12(context),
                        )
                      ],
                    ),
                    verticalGap(10.w),
                    Text(
                      'For 1 night',
                      style: appTextStyle12500(context),
                    ),
                    verticalGap(10.w),
                    Text(
                      'NGN43,4959',
                      style: appTextStyle14700(context),
                    )
                  ],
                ),
              ),
              verticalGap(10.h),
              const CustomButton(text: 'Update'),
              verticalGap(10.h),
            ],
          ),
        ),
      ),
    );
  }
}
