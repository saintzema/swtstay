import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:swtstay/features/booking/screens/booking_screen.dart';
import 'package:swtstay/features/home/screens/homepage.dart';
import 'package:swtstay/features/notifications/screens/notification_screen.dart';
import 'package:swtstay/features/profile/screens/profile_screen.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final List<Widget> _bottomBars = const [
    HomePage(),
    BookingScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  // void onTap(index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  @override
  void initState() {
    super.initState();

    // context.read<ProfileRepository>().getUserData();

    // context.read<CartProductRepository>().getCartProduct();
    // context.read<RecentProductRepository>().getRecentProducts();
    // context.read<LocationRepository>().getStateAndLga();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _bottomBars[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20.h, right: 15.w, left: 15.w),
        height: size.width * .195,
        decoration: BoxDecoration(
          color: isDarkMode(context) ? const Color.fromARGB(255, 72, 68, 68) : GColors.whiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.dg),
            topLeft: Radius.circular(20.dg),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            _bottomBars.length,
            (index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.w),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 1500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        // margin: EdgeInsets.only(
                        // right: size.width * .02,
                        // left: size.width * .02,
                        // ),
                        width: 10.w,
                        height: index == currentIndex ? 4 : 0,
                        decoration: BoxDecoration(
                          color: isDarkMode(context) ? GColors.whiteColor : GColors.mainColor,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(10.dg),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Icon(
                      listOfIcons[index],
                      size: 24.h,
                      color: index == currentIndex
                          ? isDarkMode(context)
                              ? GColors.whiteColor
                              : GColors.mainColor
                          : isDarkMode(context)
                              ? GColors.hintTextColor
                              : Colors.black38,
                    ),
                    Text(
                      _titleTexts[index],
                      style: TextStyle(
                        fontFamily: 'SFPRODISPLAYREGULAR',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: index == currentIndex
                            ? isDarkMode(context)
                                ? GColors.whiteColor
                                : GColors.mainColor
                            : isDarkMode(context)
                                ? GColors.hintTextColor
                                : Colors.black38,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<IconData> listOfIcons = [
    Iconsax.search_normal,
    Iconsax.receipt_2,
    Iconsax.notification,
    Iconsax.user_square,
  ];

  final List<String> _titleTexts = [
    "Search",
    "Booking",
    "Notifications",
    "Profile",
  ];
}
