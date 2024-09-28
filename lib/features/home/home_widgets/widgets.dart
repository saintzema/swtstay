import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/constants/image_strings.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/textstyles.dart';
import 'package:table_calendar/table_calendar.dart';
// *********************** Refer cards design  ************************

class ReferContainer extends StatelessWidget {
  final String image;
  final String text;
  const ReferContainer({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 174,
        // margin: EdgeInsets.symmetric(horizontal: 16.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill), borderRadius: BorderRadius.circular(10.dg), color: GColors.avarterBGColor),
        child: Text(
          text,
          style: appTextStyle12500(context, GColors.mainBlackColor),
        ));
  }
}

// ******************** Book now Container design  *******************

class BookNowContainer extends StatelessWidget {
  const BookNowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 22.h),
      decoration: BoxDecoration(image: const DecorationImage(image: AssetImage(GImage.bookNowCard)), borderRadius: BorderRadius.circular(10.dg), color: GColors.avarterBGColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Book affordable hotels in\nseconds',
            style: appTextStyle12500(context, GColors.mainBlackColor),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.dg)), padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h), minimumSize: Size(68.w, 28.h)),
              onPressed: () {},
              child: Text(
                'Book now',
                style: appTextStyle12500(context),
              ))
        ],
      ),
    );
  }
}

// *********************** Categories options design   ***************

class CategoriesCard extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CategoriesCard({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Container(
        height: 55.h,
        width: 168.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.dg),
              topRight: Radius.circular(10.dg),
            ),
            color: GColors.tabBGColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            verticalGap(6.h),
            Column(
              children: [
                Icon(
                  Iconsax.category,
                  size: 20.h,
                  color: GColors.mainBlackTextColor,
                ),
                Text(text, style: appTextStyle12(context, GColors.mainBlackTextColor)),
              ],
            ),
            Container(
              height: 3.h,
              width: double.infinity,
              color: isSelected ? GColors.mainColor : null,
            )
          ],
        ),
      ),
    );
  }
}

// *********************** Rooms card design  ************************

class RoomsCard extends StatelessWidget {
  const RoomsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/homeDetailScreen'),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(height: 224.h, width: double.infinity, child: Image.asset(GImage.roomImg)),
                Padding(
                  padding: EdgeInsets.all(8.0.dg),
                  child: Column(
                    children: [
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
                          Text('3 rooms', style: appTextStyle14(context, GColors.hintTextColor)),
                        ],
                      ),
                      verticalGap(5.h),
                      const PriceText()
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              left: 16.w,
              top: 16.h,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                decoration: BoxDecoration(color: GColors.whiteColor, borderRadius: BorderRadius.circular(50.dg)),
                child: Text(
                  "Customer's favorite",
                  style: appTextStyle10(
                    context,
                    GColors.mainBlackColor,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

// *********************** Room prices texts  ************************

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: 'Starting from: ',
            style: appTextStyle14(context, GColors.mainBlackTextColor),
          ),
          TextSpan(
            text: 'NGN54,274 ',
            style: appTextStyle14700(context, GColors.mainBlackTextColor),
          ),
          TextSpan(
            text: '/night',
            style: appTextStyle14(context, GColors.hintTextColor),
          ),
        ])),
      ],
    );
  }
}

// ********************* Add guest bottomshet design   ***************

class AddGuestWidget extends StatelessWidget {
  const AddGuestWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              'Who is coming?',
              style: mediumTextStyle700(context, GColors.mainBlackColor),
            ),
          ),
          verticalGap(20.h),
          const AgeGroupTile(),
          const Divider(),
          const AgeGroupTile(),
          const Divider(),
          const AgeGroupTile(),
          const Divider(),
          const AgeGroupTile(),
          const ResetAndUpdateButton(resetText: 'Reset all', updatehText: 'Update')
        ],
      ),
    );
  }
}

// ************** The different age groups tile design ***************

class AgeGroupTile extends StatelessWidget {
  const AgeGroupTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Adult",
        style: appTextStyle14(context),
      ),
      subtitle: Text(
        'Age 13 or above',
        style: appTextStyle10(context),
      ),
      trailing: Container(
        width: 120.w,
        height: 44.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.dg), border: Border.all(color: isDarkMode(context) ? GColors.hintTextColor : GColors.mainBlackTextColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Iconsax.minus,
              size: 24.dg,
            ),
            Text(
              "1",
              style: appTextStyle14(context),
            ),
            Icon(
              Iconsax.add,
              size: 24.dg,
            ),
          ],
        ),
      ),
    );
  }
}

// *********************** Search button design   ********************

class SearchButton extends StatelessWidget {
  final void Function()? resetButton;
  final void Function()? searchButton;
  final String clearText;
  final String searchText;
  const SearchButton({
    super.key,
    this.resetButton,
    this.searchButton,
    required this.clearText,
    required this.searchText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 40.w, left: 28.w),
                  child: Center(
                      child: InkWell(
                    onTap: resetButton,
                    child: Text(
                      clearText,
                      style: appTextStyle14600(context, GColors.primaryRedColor),
                    ),
                  ))),
              SizedBox(width: 236.w, child: CustomButton(onTap: searchButton, text: searchText))
            ],
          ),
        ),
      ],
    );
  }
}

// *********************** When and Who tile  design   ***************

class WhereAndWhoContainer extends StatelessWidget {
  final String firstText;
  final String secondText;
  final void Function()? onTap;
  const WhereAndWhoContainer({
    super.key,
    required this.firstText,
    required this.secondText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 56.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
            // color: GColors.avarterBGColor,
            border: Border.all(color: GColors.cardBGcolor),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                firstText,
                style: appTextStyle14(context),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  secondText,
                  style: appTextStyle14600(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// *********************** The Table Calender design   ***************

class GTableCalendar extends StatefulWidget {
  const GTableCalendar({super.key});

  @override
  State<GTableCalendar> createState() => _GTableCalendarState();
}

class _GTableCalendarState extends State<GTableCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedStartDay;
  DateTime? _selectedEndDay;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "When is your trip?",
              style: mediumTextStyle700(context, GColors.mainBlackTextColor),
            ),
            TableCalendar(
              firstDay: DateTime(2020, 1, 1),
              lastDay: DateTime(2030, 12, 31),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                if (_selectedStartDay != null && _selectedEndDay != null) {
                  return day.isAfter(_selectedStartDay!.subtract(const Duration(days: 1))) && day.isBefore(_selectedEndDay!.add(const Duration(days: 1)));
                }
                return _selectedStartDay == day;
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _focusedDay = focusedDay;

                  if (_selectedStartDay == null || _selectedEndDay != null) {
                    _selectedStartDay = selectedDay;
                    _selectedEndDay = null;
                  } else if (_selectedStartDay != null && _selectedEndDay == null) {
                    if (selectedDay.isBefore(_selectedStartDay!)) {
                      _selectedStartDay = selectedDay;
                    } else {
                      _selectedEndDay = selectedDay;
                    }
                  }
                });
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              calendarBuilders: CalendarBuilders(
                selectedBuilder: (context, date, events) {
                  return Container(
                    margin: const EdgeInsets.all(6.0),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      date.day.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
                rangeHighlightBuilder: (context, day, isWithinRange) {
                  if (isWithinRange) {
                    return Container(
                      margin: const EdgeInsets.all(6.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        day.day.toString(),
                        style: const TextStyle(color: Colors.blue),
                      ),
                    );
                  }
                  return null;
                },
              ),
            ),
            if (_selectedStartDay != null && _selectedEndDay != null)
              Visibility(
                visible: false,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Selected Range: ${_selectedStartDay!.toLocal()} - ${_selectedEndDay!.toLocal()}',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            verticalGap(10.h),
            const ResetAndUpdateButton(
              resetText: 'Reset all',
              updatehText: 'Update',
            ),
          ],
        ),
      ),
    );
  }
}

// *************** The Search and Update buttondesign  ***************

class ResetAndUpdateButton extends StatelessWidget {
  final void Function()? resetButton;
  final void Function()? updatehButton;
  final String resetText;
  final String updatehText;
  const ResetAndUpdateButton({
    super.key,
    this.resetButton,
    this.updatehButton,
    required this.resetText,
    required this.updatehText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 40.w, left: 32.w),
                child: Center(
                    child: InkWell(
                  onTap: resetButton,
                  child: Text(
                    resetText,
                    style: appTextStyle14600(context, GColors.primaryRedColor),
                  ),
                )),
              ),
              Expanded(child: SizedBox(width: 236.w, child: CustomButton(onTap: updatehButton, text: updatehText)))
            ],
          ),
        ),
        verticalGap(20.h)
      ],
    );
  }
}

// *************** The Filter Search  button design  *****************

class FilterButton extends StatelessWidget {
  const FilterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/filterScreen'),
      child: Container(
        height: 48.h,
        width: 48.w,
        // margin: EdgeInsets.only(right: 16.w),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.dg), color: GColors.avarterBGColor),
        child: const Icon(
          Iconsax.setting_4,
          color: GColors.mainColor,
        ),
      ),
    );
  }
}
