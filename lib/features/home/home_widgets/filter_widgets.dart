//* */ ***************** Beds container design ***********************

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class BedsContainer extends StatefulWidget {
  const BedsContainer({super.key});

  @override
  State<BedsContainer> createState() => _BedsContainerState();
}

class _BedsContainerState extends State<BedsContainer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> types = ['Any', '1', '2', '3'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bedrooms",
          style: appTextStyle12(context),
        ),
        verticalGap(10.h),
        SizedBox(
          height: 32,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: types.length,
            itemBuilder: (context, index) {
              bool isSelected = index == _selectedIndex;
              return Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 32.h,
                    width: 80.25.w,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? GColors.mainColor
                          : GColors.avarterBGColor,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Center(
                      child: Text(
                        types[index],
                        style: appTextStyle12500(context).copyWith(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// ***************** Bedrooms container design ***********************

class BedroomsContainer extends StatefulWidget {
  const BedroomsContainer({super.key});

  @override
  State<BedroomsContainer> createState() => _BedroomsContainerState();
}

class _BedroomsContainerState extends State<BedroomsContainer> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> types = ['Any', 'Single', 'Double', 'Suite'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bedrooms",
          style: appTextStyle12(context),
        ),
        verticalGap(10.h),
        SizedBox(
          height: 32,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: types.length,
            itemBuilder: (context, index) {
              bool isSelected = index == _selectedIndex;
              return Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    height: 32.h,
                    width: 80.25.w,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? GColors.mainColor
                          : GColors.avarterBGColor,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Center(
                      child: Text(
                        types[index],
                        style: appTextStyle12500(context).copyWith(
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// ************** Minimum and Maximun Card design ********************

class MinAndMaxPriceCard extends StatelessWidget {
  final String minMaxText;
  final String price;
  const MinAndMaxPriceCard({
    super.key,
    required this.minMaxText,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 56.h,
      width: 156.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.dg),
          color: isDarkMode(context)
              ? GColors.mainBlackTextColor
              : GColors.whiteColor,
          border: Border.all(color: GColors.hintTextColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            minMaxText,
            style: appTextStyle12(context),
          ),
          Text(
            price,
            style: appTextStyle12600(context),
          )
        ],
      ),
    );
  }
}

class TypeOfPlaceCard extends StatelessWidget {
  final String text;
  const TypeOfPlaceCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      height: 82.h,
      width: 176.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.dg),
          color: isDarkMode(context)
              ? GColors.mainBlackTextColor
              : GColors.whiteColor,
          border: Border.all(color: GColors.hintTextColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Iconsax.house,
            size: 24.h,
          ),
          Text(
            text,
            style: appTextStyle14(context),
          )
        ],
      ),
    );
  }
}

class TitleAndSubtextTile extends StatelessWidget {
  final String title;
  final String subText;
  const TitleAndSubtextTile({
    super.key,
    required this.title,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: appTextStyle14500(context),
      ),
      subtitle: Text(
        subText,
        style: appTextStyle12(context),
      ),
    );
  }
}
