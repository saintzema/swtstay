import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/auth_screens/widgets/social_button_widget.dart';
import 'package:swtstay/features/booking/booking_widgets/booking_detail_widget.dart';
import 'package:swtstay/features/home/home_widgets/home_detail_widget.dart';
import 'package:swtstay/features/home/screens/branches_screen.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class HomeDetailScreen extends StatefulWidget {
  const HomeDetailScreen({super.key});

  @override
  State<HomeDetailScreen> createState() => _HomeDetailScreenState();
}

class _HomeDetailScreenState extends State<HomeDetailScreen> {
  bool _isExpanded = false;
  final Duration _animationDuration = const Duration(milliseconds: 1000);
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
                      Row(
                        children: [
                          const TopRated(
                            text: 'Famous hotel',
                            color: GColors.avarterBGColor,
                          ),
                          horizontalGap(10.w),
                          const TopRated(
                            text: 'Top rated',
                            color: GColors.avarterBGColor,
                          ),
                        ],
                      ),
                      verticalGap(10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name of hotel',
                            style: appTextStyle16700(context),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.star1,
                                color: GColors.goldColor,
                              ),
                              Text(
                                '4.5 (563)',
                                style: appTextStyle16700(context, GColors.goldColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      verticalGap(5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Iconsax.location,
                                size: 16.h,
                                color: GColors.hintTextColor,
                              ),
                              horizontalGap(4.w),
                              Text('Nnebisi Road, Asaba', style: appTextStyle14(context, GColors.hintTextColor)),
                            ],
                          ),
                        ],
                      ),
                      verticalGap(12.h),
                      const Divider(),
                      verticalGap(12.h),
                      Row(
                        children: [
                          const DealsContainer(
                            text: '25% Off',
                            color: GColors.mainColor,
                          ),
                          horizontalGap(10.w),
                          const DealsContainer(
                            text: 'First Time Discount',
                            color: GColors.mainBlackColor,
                          ),
                          horizontalGap(10.w),
                          const DealsContainer(
                            text: 'Gateway Deals',
                            color: GColors.mainColor,
                          ),
                        ],
                      ),
                      verticalGap(8.h),
                      Text(
                        'Price for 3 nights, 1 adult',
                        style: appTextStyle12500(context),
                      ),
                      verticalGap(8.h),
                      Row(
                        children: [
                          const StrokedText(),
                          horizontalGap(10.w),
                          Text(
                            'NGN225,780',
                            style: appTextStyle12500(context),
                          )
                        ],
                      ),
                      verticalGap(8.h),
                      Text(
                        'Includes taxes and fees',
                        style: appTextStyle12500(context),
                      ),
                      verticalGap(30.h),
                      Text(
                        'Most popular amenities',
                        style: appTextStyle14700(context),
                      ),
                      verticalGap(12.h),
                      Wrap(
                        // Set the spacing between each container
                        spacing: 10.0,
                        // Set the run spacing between each row of containers
                        runSpacing: 10.0,
                        children: List.generate(10, (index) {
                          return decoratedContainer(index, context);
                        }),
                      ),
                      verticalGap(20.h),
                      const ComfortAndPriorityContainer(),
                      verticalGap(16.h),
                      Text(
                        'Property location',
                        style: appTextStyle14700(context),
                      ),
                      verticalGap(10.h),
                      Container(
                        height: 144,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: GColors.hintTextColor,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10.dg),
                        ),
                      ),
                      verticalGap(10.h),
                      Text(
                        'Location description Figma ipsum component variant main layer. Vector resizing subtract rectangle line fill share content rough hand.',
                        style: appTextStyle12(context),
                      ),
                      verticalGap(10.h),
                      const Divider(),
                      const GuestReviews(),
                      _isExpanded
                          ? SocialButton(
                              onTap: () {
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                              text: 'See less',
                              image: '')
                          : SocialButton(
                              onTap: () {
                                setState(() {
                                  _isExpanded = !_isExpanded;
                                });
                              },
                              text: 'See more',
                              image: ''),
                      verticalGap(20.h),
                      AnimatedContainer(
                          duration: _animationDuration,
                          curve: Curves.easeInOut,
                          // height: _isExpanded ? 2800.0 : 0.0,
                          child: _isExpanded
                              ? SingleChildScrollView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
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
                                      const AppTextButton(text: 'See all 233 reviews'),
                                      verticalGap(10.h),
                                      const FrequentlyAskedQuestions(),
                                      verticalGap(20.h),
                                      const AskQuestionWidget(),
                                      const AllRelatedTextWidget(
                                        title: 'Description',
                                        description:
                                            'Location description Figma ipsum component variant main layer. Vector resizing subtract rectangle line fill share content rough hand. Figma ipsum component variant main layer. Vector resizing subtract rectangle line fill share content rough hand.',
                                        textButton: 'Read full description',
                                      ),
                                      const AllRelatedTextWidget(
                                        title: 'Property practices',
                                        description:
                                            'Location description Figma ipsum component variant main layer. Vector resizing subtract rectangle line fill share content rough hand. Figma ipsum component variant main layer. Vector resizing subtract rectangle line fill share content rough hand.',
                                        textButton: 'Read more',
                                      ),
                                      const PoliciesWidget(),
                                      verticalGap(20.h),
                                      const AllRelatedTextWidget(
                                        title: 'Children and extra beds',
                                        description: 'Children of all ages are welcome. To see correct prices and occupancy info, add the number and ages of children in your group to your search',
                                        textButton: 'See full policies',
                                      ),
                                      const AllRelatedTextWidget(
                                        title: 'Preferred partner program',
                                        description: 'This property does not accommodate LGBTQ+ or similar parties',
                                        textButton: 'Read more',
                                      ),
                                      const AllRelatedTextWidget(
                                        title: 'Preferred partner program',
                                        description:
                                            'This property is part of our preferred plus program. It’s committed to providing outstanding service and excellent value. It’ll pay us a higher commission if you make a booking.',
                                        textButton: '',
                                      ),
                                      const PropertySurroundingWidget(),
                                      verticalGap(10.h),
                                      const PropertyRatingWidget()
                                    ],
                                  ),
                                )
                              : null)
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
                  children: [
                    verticalGap(10.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(380.w, 56.h),
                      ),
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return const BranchesBottomSheetWidget();
                            });
                      },
                      child: const Text(
                        'See branches',
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

final List amenities = ['Internet', 'Room service', 'Non smoking rooms', 'parking', 'bar', 'restaurants'];

class BranchesBottomSheetWidget extends StatelessWidget {
  const BranchesBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.dg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select branch',
            style: appTextStyle16500(context),
          ),
          verticalGap(20.h),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => navigateToScreen(context, const BranchesScreen()),
                  child: ListTile(
                    title: Text(
                      'Wuse, Abuja',
                      style: appTextStyle14(context),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}

Widget decoratedContainer(int index, BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.dg),
      border: Border.all(
        color: GColors.hintTextColor,
      ),
    ),
    // height: 27.h,
    child: Text(
      amenities[index % amenities.length],
      style: appTextStyle12(context),
    ),
  );
}
