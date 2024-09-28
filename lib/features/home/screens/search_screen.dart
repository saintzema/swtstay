import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/home/home_widgets/widgets.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/custom_search_bar.dart';
import 'package:swtstay/widgets/textstyles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalGap(10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: GestureDetector(onTap: () => Navigator.pop(context), child: const Icon(Iconsax.close_circle)),
                ),
                verticalGap(20.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    'Where to?',
                    style: mediumTextStyle700(context, GColors.mainBlackColor),
                  ),
                ),
                verticalGap(16.h),
                Padding(
                  padding: EdgeInsets.only(right: 16.w, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Expanded(child: CustomSearchBar(searchController: searchController)), horizontalGap(16.w), const FilterButton()],
                  ),
                ),
                verticalGap(16.w),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    'Popular places',
                    style: appTextStyle16700(context),
                  ),
                ),
                verticalGap(8.w),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: SizedBox(
                    height: 110.h,
                    child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 8.w),
                                height: 88.h,
                                width: 88.w,
                                decoration: BoxDecoration(color: GColors.avarterBGColor, borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Iconsax.image,
                                  size: 24.h,
                                ),
                              ),
                              Center(
                                child: Text(
                                  "Name of place",
                                  style: appTextStyle12(context),
                                ),
                              )
                            ],
                          );
                        }),
                  ),
                ),
                verticalGap(16.h),
                WhereAndWhoContainer(
                  onTap: selectDaysBottomSheet,
                  firstText: 'When',
                  secondText: 'Any week',
                ),
                verticalGap(16.h),
                WhereAndWhoContainer(
                  onTap: addGuestBottomSheet,
                  firstText: 'Who',
                  secondText: 'Any guest',
                ),
              ],
            ),
            const SearchButton(
              clearText: 'Clear',
              searchText: 'Search',
            ),
          ],
        ),
      ),
    );
  }

  void selectDaysBottomSheet() {
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        context: context,
        builder: (_) {
          return const GTableCalendar();
        });
  }

  void addGuestBottomSheet() {
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        context: context,
        builder: (_) {
          return const AddGuestWidget();
        });
  }
}
