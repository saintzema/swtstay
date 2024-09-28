import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/utils/helpers/helpers.dart';
import 'package:swtstay/widgets/textstyles.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notification',
                    style: mediumTextStyle700(context, GColors.mainBlackTextColor),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.dg),
                      color: isDarkMode(context) ? GColors.mainBlackColor : GColors.avarterBGColor,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                    child: Text(
                      'Mark all as read',
                      style: appTextStyle12(context),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                const Row(
                  children: [
                    AllNotifications(
                      title: 'All',
                      number: '4',
                      color: GColors.mainColor,
                      backgroundColor: Colors.transparent,
                    ),
                    AllNotifications(
                      title: 'Unread',
                      number: '4',
                      color: GColors.hintTextColor,
                      backgroundColor: GColors.primaryRedColor,
                    ),
                    AllNotifications(
                      title: 'Read',
                      number: '4',
                      color: GColors.hintTextColor,
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 1.h,
                  color: isDarkMode(context) ? const Color.fromARGB(255, 74, 67, 67) : GColors.hintTextColor,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 16.h, left: 16.w),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        const CircleAvatar(),
                        horizontalGap(12.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title of message',
                              style: appTextStyle12600(context),
                            ),
                            SizedBox(
                              width: 300.w,
                              child: Text(
                                'Figma ipsum component variant main layer. Arrow flows stroke main share flows list flatten shadow.',
                                style: appTextStyle12(context),
                              ),
                            ),
                            verticalGap(10.h),
                            Text(
                              '1 minutes ago',
                              style: appTextStyle10(context),
                            ),
                          ],
                        ),
                      ]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class AllNotifications extends StatelessWidget {
  final String title;
  final String number;
  final Color backgroundColor;
  final Color color;
  const AllNotifications({
    super.key,
    required this.title,
    required this.number,
    required this.backgroundColor,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            width: 100.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: appTextStyle14(context, color),
                    ),
                    horizontalGap(6.w),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(5.dg),
                        border: Border.all(
                          color: color,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          number,
                          style: appTextStyle10(context),
                        ),
                      ),
                    ),
                  ],
                ),
                verticalGap(12.h),
                Container(
                  height: 1.h,
                  color: color,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
