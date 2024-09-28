import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/home/home_widgets/filter_widgets.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  final List<String> _places = ['Hotel', 'Apartments', 'Guest house', 'Resort'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: GestureDetector(onTap: () => Navigator.pop(context), child: const Icon(Iconsax.close_circle)),
        title: Text(
          "Filter",
          style: appTextStyle16700(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const TitleAndSubtextTile(
              title: 'Type of place',
              subText: 'Search rooms, apartments, or any type of place',
            ),
            verticalGap(10.h),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2.0,
                ),
                itemCount: _places.length,
                itemBuilder: (context, int index) {
                  return TypeOfPlaceCard(
                    text: _places[index],
                  );
                }),
            verticalGap(20.h),
            const TitleAndSubtextTile(
              title: 'Price range',
              subText: 'Search rooms, apartments, or any type of place',
            ),
            verticalGap(20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MinAndMaxPriceCard(
                  minMaxText: 'Minimum',
                  price: 'NGN20,000',
                ),
                Icon(
                  Iconsax.minus,
                  size: 24.h,
                  color: GColors.mainColor,
                ),
                const MinAndMaxPriceCard(
                  minMaxText: 'Maximum',
                  price: 'NGN250,000 +',
                ),
              ],
            ),
            verticalGap(20.h),
            Text(
              'Rooms and Beds',
              style: appTextStyle14500(context),
            ),
            verticalGap(20.h),
            const BedroomsContainer(),
            verticalGap(20.h),
            const BedsContainer(),
            verticalGap(20.h),
            Text(
              'Amenities',
              style: appTextStyle14500(context),
            ),
            verticalGap(10.h),
            SizedBox(
              // height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: _texts
                        .map((text) => CheckboxListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                text,
                                style: appTextStyle14(context),
                              ),
                              value: _isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  _isChecked = value!;
                                });
                              },
                            ))
                        .toList(),
                  ),
                  Text(
                    "See more..",
                    style: appTextStyle12(context),
                  ),
                ],
              ),
            ),
            verticalGap(20.h),
            Text(
              'Booking options',
              style: appTextStyle14500(context),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 56.h,
                    child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(
                          _titleStrings[index],
                          style: appTextStyle14(context),
                        ),
                        subtitle: Text(
                          _subTitleTexts[index],
                          style: appTextStyle12(context),
                        ),
                        trailing: Transform.scale(
                          scale: 0.8,
                          child: Switch(
                            activeColor: isDarkMode(context) ? GColors.hintTextColor : GColors.mainColor,
                            value: _isSwitched,
                            onChanged: (value) {
                              setState(() {
                                _isSwitched = value;
                              });
                            },
                          ),
                        )),
                  );
                }),
            verticalGap(20.h),
            Text(
              'Accessibility features',
              style: appTextStyle14500(context),
            ),
            verticalGap(10.h),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _accessibilities.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 56.h,
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        _accessibilities[index],
                        style: appTextStyle14(context),
                      ),
                    ),
                  );
                }),
          ]),
        ),
      ),
    );
  }

  final List _accessibilities = ['Step-free guest entrance', 'Guest entrance wider than 32 inches', 'Step-free path to the guest entrance'];

  final List _subTitleTexts = ['Book without waiting for the host to respond', 'Easy access to the property once you arrive', 'Bringing a service animal?'];
  final List _titleStrings = [
    'Instant book',
    'Self check-in',
    'Allows pets',
  ];

  bool _isSwitched = false;
  bool _isChecked = false;
  final List<String> _texts = [
    "Wifi",
    "Kitchen",
    "Weather",
  ];
}
