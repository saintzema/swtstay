import 'package:flutter/material.dart';

// class GhelperFuctions {
//************************ Navigate to other screen ****************************

void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
}

// ********************** To Truncate Texts ************************************

String truncateText(String text, int maxLenght) {
  if (text.length <= maxLenght) {
    return text;
  } else {
    return '${text.substring(0, maxLenght)}...';
  }
}

// ********************** To switch dark & light mode **************************

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

// ********************** For SizedBox height and width ************************

Widget verticalGap(double height) {
  return SizedBox(
    height: height,
  );
}

Widget horizontalGap(double width) {
  return SizedBox(
    width: width,
  );
}

// ********************** To capitalize first letters ************************

String capitalizeFirstLetter(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}
// }

