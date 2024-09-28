import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swtstay/widgets/textstyles.dart';

class ProfileTiles extends StatelessWidget {
  final void Function()? ontap;
  final IconData icon;
  final String text;
  const ProfileTiles({
    super.key,
    required this.icon,
    required this.text,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: ListTile(
        leading: Icon(
          icon,
          size: 21.h,
        ),
        title: Text(
          text,
          style: appTextStyle14(context),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 21.h,
        ),
      ),
    );
  }
}
