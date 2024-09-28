import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/features/booking/booking_widgets/widget.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Bookings',
          style: mediumTextStyle700(context, GColors.mainBlackTextColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 35.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: bookingTitles.length,
                  itemBuilder: (context, index) {
                    return BookingOptions(
                      text: bookingTitles[index],
                      isSelected: index == _selectedIndex,
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    );
                  }),
            ),
            verticalGap(20.h),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/bookingDetail');
                },
                child: const BookingPropertyCard())
          ],
        ),
      ),
    );
  }
}
