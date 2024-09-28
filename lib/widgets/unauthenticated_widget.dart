import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/utils/constants/colors.dart';
import 'package:swtstay/widgets/buttons.dart';
import 'package:swtstay/widgets/custom_text.dart';
import 'package:swtstay/widgets/textstyles.dart';

class UnAuthenticatedWidget extends StatefulWidget {
  const UnAuthenticatedWidget({super.key});

  @override
  State<UnAuthenticatedWidget> createState() => _UnAuthenticatedWidgetState();
}

class _UnAuthenticatedWidgetState extends State<UnAuthenticatedWidget> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unAuthenticatedBottomSheet();
    });
  }

  void unAuthenticatedBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
              height: 330,
              decoration: BoxDecoration(
                  color: GColors.pinBorderColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.w),
                      topRight: Radius.circular(20.w))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 40.w,
                          ),
                          Container(
                              height: 8.h,
                              width: 68.w,
                              decoration: BoxDecoration(
                                  color: GColors.mainBlackTextColor,
                                  borderRadius: BorderRadius.circular(5.h))),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            // child: const IconTexts(
                            //     icon: Icons.cancel, text: "close"))
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: GColors.pinBorderColor,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20.w),
                              bottomLeft: Radius.circular(20.w))),
                      child: Column(
                        children: [
                          const CustomBigText(
                              text: "Hello guest",
                              color: GColors.mainBlackTextColor),
                          const Text(
                            "Kindly login to enjoy our premium services",
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/signIn'),
                              child: const CustomButton(text: "Sign in")),
                          SizedBox(
                            height: 20.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(
                                    context, "/emailVerification");
                              },
                              child: Container(
                                height: 56.h,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: GColors.mainColor),
                                    borderRadius: BorderRadius.circular(10.dg)),
                                child: Center(
                                    child: Text(
                                  "Create account",
                                  style: appTextStyle14(
                                      context, GColors.mainColor),
                                )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Dont have an account yet? Kindly create one",
                            style: appTextStyle14(
                                context, GColors.mainBlackTextColor),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    )
                  ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: null);
  }
}

class UnAuthenticatedWidget2 extends StatelessWidget {
  const UnAuthenticatedWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 330,
        decoration: BoxDecoration(
            color: GColors.pinBorderColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.w),
                topRight: Radius.circular(20.w))),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40.w,
                ),
                Container(
                    height: 8.h,
                    width: 68.w,
                    decoration: BoxDecoration(
                        color: GColors.mainBlackTextColor,
                        borderRadius: BorderRadius.circular(5.h))),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  // child: const IconTexts(icon: Icons.cancel, text: "close"),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            decoration: BoxDecoration(
                color: GColors.pinBorderColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.w),
                    bottomLeft: Radius.circular(20.w))),
            child: Column(
              children: [
                const CustomBigText(
                    text: "Hello guest", color: GColors.mainBlackTextColor),
                const Text(
                  "Kindly login to enjoy our premium services",
                ),
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/signIn'),
                    child: const CustomButton(text: "Sign in")),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/emailVerification");
                    },
                    child: Container(
                      height: 56.h,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          border: Border.all(color: GColors.mainColor),
                          borderRadius: BorderRadius.circular(10.dg)),
                      child: Center(
                          child: Text(
                        "Create account",
                        style: appTextStyle14(context, GColors.mainColor),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Dont have an account yet? Kindly create one",
                  style: appTextStyle14(context, GColors.mainBlackTextColor),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          )
        ]));
  }
}
